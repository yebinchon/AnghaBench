
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ Size ;


 scalar_t__ CloseTransientFile (int) ;
 scalar_t__ ENOENT ;
 int ERRCODE_OUT_OF_MEMORY ;
 int LOG ;
 scalar_t__ MaxAllocHugeSize ;
 int O_RDONLY ;
 int OpenTransientFile (int ,int) ;
 int PGSS_TEXT_FILE ;
 int PG_BINARY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,int ) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ read (int,char*,scalar_t__) ;

__attribute__((used)) static char *
qtext_load_file(Size *buffer_size)
{
 char *buf;
 int fd;
 struct stat stat;

 fd = OpenTransientFile(PGSS_TEXT_FILE, O_RDONLY | PG_BINARY);
 if (fd < 0)
 {
  if (errno != ENOENT)
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       PGSS_TEXT_FILE)));
  return ((void*)0);
 }


 if (fstat(fd, &stat))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m",
      PGSS_TEXT_FILE)));
  CloseTransientFile(fd);
  return ((void*)0);
 }


 if (stat.st_size <= MaxAllocHugeSize)
  buf = (char *) malloc(stat.st_size);
 else
  buf = ((void*)0);
 if (buf == ((void*)0))
 {
  ereport(LOG,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory"),
     errdetail("Could not allocate enough memory to read file \"%s\".",
         PGSS_TEXT_FILE)));
  CloseTransientFile(fd);
  return ((void*)0);
 }
 errno = 0;
 if (read(fd, buf, stat.st_size) != stat.st_size)
 {
  if (errno)
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       PGSS_TEXT_FILE)));
  free(buf);
  CloseTransientFile(fd);
  return ((void*)0);
 }

 if (CloseTransientFile(fd) != 0)
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m", PGSS_TEXT_FILE)));

 *buffer_size = stat.st_size;
 return buf;
}
