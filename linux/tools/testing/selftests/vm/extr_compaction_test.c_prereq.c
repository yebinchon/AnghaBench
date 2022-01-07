
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int) ;
 int perror (char*) ;
 int read (int,char*,int) ;

int prereq(void)
{
 char allowed;
 int fd;

 fd = open("/proc/sys/vm/compact_unevictable_allowed",
    O_RDONLY | O_NONBLOCK);
 if (fd < 0) {
  perror("Failed to open\n"
         "/proc/sys/vm/compact_unevictable_allowed\n");
  return -1;
 }

 if (read(fd, &allowed, sizeof(char)) != sizeof(char)) {
  perror("Failed to read from\n"
         "/proc/sys/vm/compact_unevictable_allowed\n");
  close(fd);
  return -1;
 }

 close(fd);
 if (allowed == '1')
  return 0;

 return -1;
}
