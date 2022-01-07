
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_EMPTY_PATH ;
 int AT_FDCWD ;
 int CLONE_NEWNS ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int MS_PRIVATE ;
 int MS_REC ;
 int O_TMPFILE ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,scalar_t__) ;
 int linkat (int,char*,int ,char*,int ) ;
 int mount (int *,char*,char*,int,char*) ;
 int openat (int ,char*,int,int) ;
 int stderr ;
 int unshare (int ) ;

int main(void)
{
 int fd;

 if (unshare(CLONE_NEWNS) == -1) {
  if (errno == ENOSYS || errno == EPERM) {
   fprintf(stderr, "error: unshare, errno %d\n", errno);
   return 4;
  }
  fprintf(stderr, "error: unshare, errno %d\n", errno);
  return 1;
 }
 if (mount(((void*)0), "/", ((void*)0), MS_PRIVATE|MS_REC, ((void*)0)) == -1) {
  fprintf(stderr, "error: mount '/', errno %d\n", errno);
  return 1;
 }


 if (mount(((void*)0), "/tmp", "tmpfs", 0, "nr_inodes=3") == -1) {
  fprintf(stderr, "error: mount tmpfs, errno %d\n", errno);
  return 1;
 }

 fd = openat(AT_FDCWD, "/tmp", O_WRONLY|O_TMPFILE, 0600);
 if (fd == -1) {
  fprintf(stderr, "error: open 1, errno %d\n", errno);
  return 1;
 }
 if (linkat(fd, "", AT_FDCWD, "/tmp/1", AT_EMPTY_PATH) == -1) {
  fprintf(stderr, "error: linkat, errno %d\n", errno);
  return 1;
 }
 close(fd);

 fd = openat(AT_FDCWD, "/tmp", O_WRONLY|O_TMPFILE, 0600);
 if (fd == -1) {
  fprintf(stderr, "error: open 2, errno %d\n", errno);
  return 1;
 }

 return 0;
}
