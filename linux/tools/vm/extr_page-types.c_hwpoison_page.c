
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hwpoison_inject_fd ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned long) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int hwpoison_page(unsigned long offset)
{
 char buf[100];
 int len;

 len = sprintf(buf, "0x%lx\n", offset);
 len = write(hwpoison_inject_fd, buf, len);
 if (len < 0) {
  perror("hwpoison inject");
  return len;
 }
 return 0;
}
