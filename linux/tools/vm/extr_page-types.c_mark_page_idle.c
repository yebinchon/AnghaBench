
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;


 int page_idle_fd ;
 int perror (char*) ;
 int pwrite (int ,unsigned long*,int,int) ;

__attribute__((used)) static int mark_page_idle(unsigned long offset)
{
 static unsigned long off;
 static uint64_t buf;
 int len;

 if ((offset / 64 == off / 64) || buf == 0) {
  buf |= 1UL << (offset % 64);
  off = offset;
  return 0;
 }

 len = pwrite(page_idle_fd, &buf, 8, 8 * (off / 64));
 if (len < 0) {
  perror("mark page idle");
  return len;
 }

 buf = 1UL << (offset % 64);
 off = offset;

 return 0;
}
