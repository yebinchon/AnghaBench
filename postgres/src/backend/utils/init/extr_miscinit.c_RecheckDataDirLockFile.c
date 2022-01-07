
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int BLCKSZ ;
 int DIRECTORY_LOCK_FILE ;


 int LOG ;
 int O_RDWR ;
 int PG_BINARY ;
 int WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ ;
 long atol (char*) ;
 int close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,...) ;
 int errno ;
 long getpid () ;
 int open (int ,int,int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int read (int,char*,int) ;

bool
RecheckDataDirLockFile(void)
{
 int fd;
 int len;
 long file_pid;
 char buffer[BLCKSZ];

 fd = open(DIRECTORY_LOCK_FILE, O_RDWR | PG_BINARY, 0);
 if (fd < 0)
 {





  switch (errno)
  {
   case 129:
   case 128:

    ereport(LOG,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\": %m",
        DIRECTORY_LOCK_FILE)));
    return 0;
   default:

    ereport(LOG,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\": %m; continuing anyway",
        DIRECTORY_LOCK_FILE)));
    return 1;
  }
 }
 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ);
 len = read(fd, buffer, sizeof(buffer) - 1);
 pgstat_report_wait_end();
 if (len < 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not read from file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
  close(fd);
  return 1;
 }
 buffer[len] = '\0';
 close(fd);
 file_pid = atol(buffer);
 if (file_pid == getpid())
  return 1;


 ereport(LOG,
   (errmsg("lock file \"%s\" contains wrong PID: %ld instead of %ld",
     DIRECTORY_LOCK_FILE, file_pid, (long) getpid())));
 return 0;
}
