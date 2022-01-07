
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int PG_BINARY ;
 scalar_t__ errno ;
 int fatal_error (char*,char const*,int ) ;
 int open (char*,int,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
open_file_in_directory(const char *directory, const char *fname)
{
 int fd = -1;
 char fpath[MAXPGPATH];

 Assert(directory != ((void*)0));

 snprintf(fpath, MAXPGPATH, "%s/%s", directory, fname);
 fd = open(fpath, O_RDONLY | PG_BINARY, 0);

 if (fd < 0 && errno != ENOENT)
  fatal_error("could not open file \"%s\": %s",
     fname, strerror(errno));
 return fd;
}
