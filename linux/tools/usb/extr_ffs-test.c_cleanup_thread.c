
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int fd; int * buf; int filename; } ;


 scalar_t__ ENODEV ;
 int FUNCTIONFS_FIFO_FLUSH ;
 int FUNCTIONFS_FIFO_STATUS ;
 scalar_t__ close (int) ;
 int err (char*,int ) ;
 scalar_t__ errno ;
 int free (int *) ;
 int ioctl (int,int ) ;
 struct thread* threads ;
 int warn (char*,int ,int) ;

__attribute__((used)) static void cleanup_thread(void *arg)
{
 struct thread *t = arg;
 int ret, fd;

 fd = t->fd;
 if (t->fd < 0)
  return;
 t->fd = -1;


 if (t != threads) {
  ret = ioctl(fd, FUNCTIONFS_FIFO_STATUS);
  if (ret < 0) {

   if (errno != ENODEV)
    err("%s: get fifo status", t->filename);
  } else if (ret) {
   warn("%s: unclaimed = %d\n", t->filename, ret);
   if (ioctl(fd, FUNCTIONFS_FIFO_FLUSH) < 0)
    err("%s: fifo flush", t->filename);
  }
 }

 if (close(fd) < 0)
  err("%s: close", t->filename);

 free(t->buf);
 t->buf = ((void*)0);
}
