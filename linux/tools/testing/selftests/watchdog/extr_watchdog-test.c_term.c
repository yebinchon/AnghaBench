
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int errno ;
 int exit (int ) ;
 int fd ;
 int printf (char*,...) ;
 int v ;
 int write (int ,int *,int) ;

__attribute__((used)) static void term(int sig)
{
 int ret = write(fd, &v, 1);

 close(fd);
 if (ret < 0)
  printf("\nStopping watchdog ticks failed (%d)...\n", errno);
 else
  printf("\nStopping watchdog ticks...\n");
 exit(0);
}
