
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int buffer ;


 char* DataDir ;
 int EACCES ;
 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 int EPERM ;
 int ERRCODE_LOCK_FILE_EXISTS ;
 int ESRCH ;
 int FATAL ;
 int LOCK_FILE_LINE_SHMEM_KEY ;
 int MAXPGPATH ;
 scalar_t__ MyStartTime ;
 scalar_t__ NIL ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ PGSharedMemoryIsInUse (unsigned long,unsigned long) ;
 int PostPortNumber ;
 int UnlinkLockFiles ;
 int WAIT_EVENT_LOCK_FILE_CREATE_READ ;
 int WAIT_EVENT_LOCK_FILE_CREATE_SYNC ;
 int WAIT_EVENT_LOCK_FILE_CREATE_WRITE ;
 void* atoi (char const*) ;
 scalar_t__ close (int) ;
 int elog (int ,char*,char const*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*,...) ;
 int errmsg (char*,...) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 scalar_t__ getppid () ;
 scalar_t__ kill (scalar_t__,int ) ;
 scalar_t__ lcons (int ,scalar_t__) ;
 scalar_t__ lock_files ;
 int on_proc_exit (int ,int ) ;
 int open (char const*,int,int ) ;
 int pg_file_create_mode ;
 scalar_t__ pg_fsync (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int pstrdup (char const*) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,int,char*,long,int ,char const*) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*) ;
 char* strchr (char*,char) ;
 int strlcat (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ unlink (char const*) ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static void
CreateLockFile(const char *filename, bool amPostmaster,
      const char *socketDir,
      bool isDDLock, const char *refName)
{
 int fd;
 char buffer[MAXPGPATH * 2 + 256];
 int ntries;
 int len;
 int encoded_pid;
 pid_t other_pid;
 pid_t my_pid,
    my_p_pid,
    my_gp_pid;
 const char *envvar;
 my_pid = getpid();


 my_p_pid = getppid();
 envvar = getenv("PG_GRANDPARENT_PID");
 if (envvar)
  my_gp_pid = atoi(envvar);
 else
  my_gp_pid = 0;






 for (ntries = 0;; ntries++)
 {






  fd = open(filename, O_RDWR | O_CREAT | O_EXCL, pg_file_create_mode);
  if (fd >= 0)
   break;




  if ((errno != EEXIST && errno != EACCES) || ntries > 100)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not create lock file \"%s\": %m",
       filename)));





  fd = open(filename, O_RDONLY, pg_file_create_mode);
  if (fd < 0)
  {
   if (errno == ENOENT)
    continue;
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not open lock file \"%s\": %m",
       filename)));
  }
  pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_CREATE_READ);
  if ((len = read(fd, buffer, sizeof(buffer) - 1)) < 0)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not read lock file \"%s\": %m",
       filename)));
  pgstat_report_wait_end();
  close(fd);

  if (len == 0)
  {
   ereport(FATAL,
     (errcode(ERRCODE_LOCK_FILE_EXISTS),
      errmsg("lock file \"%s\" is empty", filename),
      errhint("Either another server is starting, or the lock file is the remnant of a previous server startup crash.")));
  }

  buffer[len] = '\0';
  encoded_pid = atoi(buffer);


  other_pid = (pid_t) (encoded_pid < 0 ? -encoded_pid : encoded_pid);

  if (other_pid <= 0)
   elog(FATAL, "bogus data in lock file \"%s\": \"%s\"",
     filename, buffer);
  if (other_pid != my_pid && other_pid != my_p_pid &&
   other_pid != my_gp_pid)
  {
   if (kill(other_pid, 0) == 0 ||
    (errno != ESRCH && errno != EPERM))
   {

    ereport(FATAL,
      (errcode(ERRCODE_LOCK_FILE_EXISTS),
       errmsg("lock file \"%s\" already exists",
        filename),
       isDDLock ?
       (encoded_pid < 0 ?
        errhint("Is another postgres (PID %d) running in data directory \"%s\"?",
          (int) other_pid, refName) :
        errhint("Is another postmaster (PID %d) running in data directory \"%s\"?",
          (int) other_pid, refName)) :
       (encoded_pid < 0 ?
        errhint("Is another postgres (PID %d) using socket file \"%s\"?",
          (int) other_pid, refName) :
        errhint("Is another postmaster (PID %d) using socket file \"%s\"?",
          (int) other_pid, refName))));
   }
  }
  if (isDDLock)
  {
   char *ptr = buffer;
   unsigned long id1,
      id2;
   int lineno;

   for (lineno = 1; lineno < LOCK_FILE_LINE_SHMEM_KEY; lineno++)
   {
    if ((ptr = strchr(ptr, '\n')) == ((void*)0))
     break;
    ptr++;
   }

   if (ptr != ((void*)0) &&
    sscanf(ptr, "%lu %lu", &id1, &id2) == 2)
   {
    if (PGSharedMemoryIsInUse(id1, id2))
     ereport(FATAL,
       (errcode(ERRCODE_LOCK_FILE_EXISTS),
        errmsg("pre-existing shared memory block (key %lu, ID %lu) is still in use",
         id1, id2),
        errhint("Terminate any old server processes associated with data directory \"%s\".",
          refName)));
   }
  }






  if (unlink(filename) < 0)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not remove old lock file \"%s\": %m",
       filename),
      errhint("The file seems accidentally left over, but "
        "it could not be removed. Please remove the file "
        "by hand and try again.")));
 }







 snprintf(buffer, sizeof(buffer), "%d\n%s\n%ld\n%d\n%s\n",
    amPostmaster ? (int) my_pid : -((int) my_pid),
    DataDir,
    (long) MyStartTime,
    PostPortNumber,
    socketDir);





 if (isDDLock && !amPostmaster)
  strlcat(buffer, "\n", sizeof(buffer));

 errno = 0;
 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_CREATE_WRITE);
 if (write(fd, buffer, strlen(buffer)) != strlen(buffer))
 {
  int save_errno = errno;

  close(fd);
  unlink(filename);

  errno = save_errno ? save_errno : ENOSPC;
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not write lock file \"%s\": %m", filename)));
 }
 pgstat_report_wait_end();

 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_CREATE_SYNC);
 if (pg_fsync(fd) != 0)
 {
  int save_errno = errno;

  close(fd);
  unlink(filename);
  errno = save_errno;
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not write lock file \"%s\": %m", filename)));
 }
 pgstat_report_wait_end();
 if (close(fd) != 0)
 {
  int save_errno = errno;

  unlink(filename);
  errno = save_errno;
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not write lock file \"%s\": %m", filename)));
 }






 if (lock_files == NIL)
  on_proc_exit(UnlinkLockFiles, 0);





 lock_files = lcons(pstrdup(filename), lock_files);
}
