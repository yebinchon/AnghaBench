
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srcbuffer ;
typedef int off_t ;
typedef int destbuffer ;


 int BLCKSZ ;
 int DIRECTORY_LOCK_FILE ;
 scalar_t__ ENOSPC ;
 int LOG ;
 int O_RDWR ;
 int PG_BINARY ;
 int SEEK_SET ;
 int WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ ;
 int WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC ;
 int WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE ;
 scalar_t__ close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int memcpy (char*,char*,int) ;
 int open (int ,int,int ) ;
 scalar_t__ pg_fsync (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ write (int,char*,int) ;

void
AddToDataDirLockFile(int target_line, const char *str)
{
 int fd;
 int len;
 int lineno;
 char *srcptr;
 char *destptr;
 char srcbuffer[BLCKSZ];
 char destbuffer[BLCKSZ];

 fd = open(DIRECTORY_LOCK_FILE, O_RDWR | PG_BINARY, 0);
 if (fd < 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
  return;
 }
 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ);
 len = read(fd, srcbuffer, sizeof(srcbuffer) - 1);
 pgstat_report_wait_end();
 if (len < 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not read from file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
  close(fd);
  return;
 }
 srcbuffer[len] = '\0';





 srcptr = srcbuffer;
 for (lineno = 1; lineno < target_line; lineno++)
 {
  char *eol = strchr(srcptr, '\n');

  if (eol == ((void*)0))
   break;
  srcptr = eol + 1;
 }
 memcpy(destbuffer, srcbuffer, srcptr - srcbuffer);
 destptr = destbuffer + (srcptr - srcbuffer);





 for (; lineno < target_line; lineno++)
 {
  if (destptr < destbuffer + sizeof(destbuffer))
   *destptr++ = '\n';
 }




 snprintf(destptr, destbuffer + sizeof(destbuffer) - destptr, "%s\n", str);
 destptr += strlen(destptr);




 if ((srcptr = strchr(srcptr, '\n')) != ((void*)0))
 {
  srcptr++;
  snprintf(destptr, destbuffer + sizeof(destbuffer) - destptr, "%s",
     srcptr);
 }





 len = strlen(destbuffer);
 errno = 0;
 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE);
 if (lseek(fd, (off_t) 0, SEEK_SET) != 0 ||
  (int) write(fd, destbuffer, len) != len)
 {
  pgstat_report_wait_end();

  if (errno == 0)
   errno = ENOSPC;
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
  close(fd);
  return;
 }
 pgstat_report_wait_end();
 pgstat_report_wait_start(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC);
 if (pg_fsync(fd) != 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
 }
 pgstat_report_wait_end();
 if (close(fd) != 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      DIRECTORY_LOCK_FILE)));
 }
}
