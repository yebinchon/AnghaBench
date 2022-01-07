
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_return (int) ;
 int printf (char*,int,...) ;
 int rfmtlong (long,char const*,char*) ;

__attribute__((used)) static void
fmtlong(long lng, const char *fmt)
{
 static int i;
 int r;
 char buf[30];

 r = rfmtlong(lng, fmt, buf);
 printf("r: %d ", r);
 if (r == 0)
 {
  printf("%d: %s (fmt was: %s)\n", i++, buf, fmt);
 }
 else
  check_return(r);
}
