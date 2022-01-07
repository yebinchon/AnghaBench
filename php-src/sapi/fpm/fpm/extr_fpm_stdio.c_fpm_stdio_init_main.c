
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int ZLOG_SYSERROR ;
 int close (int) ;
 scalar_t__ dup2 (int,int ) ;
 int open (char*,int ) ;
 int zlog (int ,char*) ;

int fpm_stdio_init_main()
{
 int fd = open("/dev/null", O_RDWR);

 if (0 > fd) {
  zlog(ZLOG_SYSERROR, "failed to init stdio: open(\"/dev/null\")");
  return -1;
 }

 if (0 > dup2(fd, STDIN_FILENO) || 0 > dup2(fd, STDOUT_FILENO)) {
  zlog(ZLOG_SYSERROR, "failed to init stdio: dup2()");
  close(fd);
  return -1;
 }
 close(fd);
 return 0;
}
