
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int DSCR_DEFAULT ;
 int O_RDONLY ;
 int SEEK_SET ;
 int close (int) ;
 int exit (int) ;
 int lseek (int,int ,int ) ;
 int memset (char*,int ,int) ;
 int open (int ,int ) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int sscanf (char*,char*,unsigned long*) ;

unsigned long get_default_dscr(void)
{
 int fd = -1, ret;
 char buf[16];
 unsigned long val;

 if (fd == -1) {
  fd = open(DSCR_DEFAULT, O_RDONLY);
  if (fd == -1) {
   perror("open() failed");
   exit(1);
  }
 }
 memset(buf, 0, sizeof(buf));
 lseek(fd, 0, SEEK_SET);
 ret = read(fd, buf, sizeof(buf));
 if (ret == -1) {
  perror("read() failed");
  exit(1);
 }
 sscanf(buf, "%lx", &val);
 close(fd);
 return val;
}
