
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int srcpath ;
typedef int off_t ;
typedef int buf ;
struct TYPE_2__ {int data; } ;
typedef TYPE_1__ PGAlignedBlock ;


 int MAXPGPATH ;
 int O_RDONLY ;
 int PG_BINARY ;
 int SEEK_SET ;
 scalar_t__ close (int) ;
 char* datadir_source ;
 int lseek (int,int,int ) ;
 int open (char*,int,int ) ;
 int open_target_file (char const*,int) ;
 int pg_fatal (char*,...) ;
 int read (int,int ,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int write_target_range (int ,int,int) ;

__attribute__((used)) static void
rewind_copy_file_range(const char *path, off_t begin, off_t end, bool trunc)
{
 PGAlignedBlock buf;
 char srcpath[MAXPGPATH];
 int srcfd;

 snprintf(srcpath, sizeof(srcpath), "%s/%s", datadir_source, path);

 srcfd = open(srcpath, O_RDONLY | PG_BINARY, 0);
 if (srcfd < 0)
  pg_fatal("could not open source file \"%s\": %m",
     srcpath);

 if (lseek(srcfd, begin, SEEK_SET) == -1)
  pg_fatal("could not seek in source file: %m");

 open_target_file(path, trunc);

 while (end - begin > 0)
 {
  int readlen;
  int len;

  if (end - begin > sizeof(buf))
   len = sizeof(buf);
  else
   len = end - begin;

  readlen = read(srcfd, buf.data, len);

  if (readlen < 0)
   pg_fatal("could not read file \"%s\": %m",
      srcpath);
  else if (readlen == 0)
   pg_fatal("unexpected EOF while reading file \"%s\"", srcpath);

  write_target_range(buf.data, begin, readlen);
  begin += readlen;
 }

 if (close(srcfd) != 0)
  pg_fatal("could not close file \"%s\": %m", srcpath);
}
