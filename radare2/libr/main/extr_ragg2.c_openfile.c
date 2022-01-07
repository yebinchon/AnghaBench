
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int _chsize (int,int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 int eprintf (char*) ;
 int fchmod (int,int) ;
 int ftruncate (int,int ) ;
 int open (char const*,int,...) ;

__attribute__((used)) static int openfile(const char *f, int x) {
 int fd = open (f, O_RDWR | O_CREAT, 0644);
 if (fd == -1) {
  fd = open (f, O_RDWR);
  if (fd == -1) {
   return -1;
  }
 }
 int r = ftruncate (fd, 0);

 if (r != 0) {
  eprintf ("Could not resize\n");
 }
 close (1);
 dup2 (fd, 1);
 return fd;
}
