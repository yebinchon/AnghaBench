
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long SIZEOF_LONG ;
 scalar_t__ fpm_trace_get_long (long,long*) ;

int fpm_trace_get_strz(char *buf, size_t sz, long addr)
{
 int i;
 long l = addr;
 char *lc = (char *) &l;

 i = l % SIZEOF_LONG;
 l -= i;
 for (addr = l; ; addr += SIZEOF_LONG) {
  if (0 > fpm_trace_get_long(addr, &l)) {
   return -1;
  }
  for ( ; i < SIZEOF_LONG; i++) {
   --sz;
   if (sz && lc[i]) {
    *buf++ = lc[i];
    continue;
   }
   *buf = '\0';
   return 0;
  }
  i = 0;
 }
}
