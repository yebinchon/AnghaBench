
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSCR_DEFAULT ;
 int O_RDWR ;
 int close (int) ;
 int exit (int) ;
 int open (int ,int ) ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned long) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

void set_default_dscr(unsigned long val)
{
 int fd = -1, ret;
 char buf[16];

 if (fd == -1) {
  fd = open(DSCR_DEFAULT, O_RDWR);
  if (fd == -1) {
   perror("open() failed");
   exit(1);
  }
 }
 sprintf(buf, "%lx\n", val);
 ret = write(fd, buf, strlen(buf));
 if (ret == -1) {
  perror("write() failed");
  exit(1);
 }
 close(fd);
}
