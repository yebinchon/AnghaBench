
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDWR ;
 int close (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,unsigned long,unsigned long) ;
 int read (int,char*,int) ;
 unsigned long strtol (char*,int *,int) ;

__attribute__((used)) static int check_cpu_dscr_default(char *file, unsigned long val)
{
 char buf[10];
 int fd, rc;

 fd = open(file, O_RDWR);
 if (fd == -1) {
  perror("open() failed");
  return 1;
 }

 rc = read(fd, buf, sizeof(buf));
 if (rc == -1) {
  perror("read() failed");
  return 1;
 }
 close(fd);

 buf[rc] = '\0';
 if (strtol(buf, ((void*)0), 16) != val) {
  printf("DSCR match failed: %ld (system) %ld (cpu)\n",
     val, strtol(buf, ((void*)0), 16));
  return 1;
 }
 return 0;
}
