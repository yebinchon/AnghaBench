
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ ENOENT ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int __DEV_FULL ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int open (int ,int) ;
 int stderr ;
 int write_nointr (int,char*,int) ;

int trigger_uevent(unsigned int times)
{
 int fd, ret;
 unsigned int i;

 fd = open(__DEV_FULL, O_RDWR | O_CLOEXEC);
 if (fd < 0) {
  if (errno != ENOENT)
   return -EINVAL;

  return -1;
 }

 for (i = 0; i < times; i++) {
  ret = write_nointr(fd, "add\n", sizeof("add\n") - 1);
  if (ret < 0) {
   fprintf(stderr, "Failed to trigger uevent\n");
   break;
  }
 }
 close(fd);

 return ret;
}
