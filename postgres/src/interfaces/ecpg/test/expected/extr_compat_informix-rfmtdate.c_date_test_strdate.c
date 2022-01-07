
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int check_return (int) ;
 int printf (char*,...) ;
 int rdatestr (int ,char*) ;
 int rstrdate (char const*,int *) ;

__attribute__((used)) static void
date_test_strdate(const char *input)
{
 static int i;
 date d;
 int r, q;
 char dbuf[11];

 r = rstrdate(input, &d);
 printf("r: %d ", r);
 if (r == 0)
 {
  q = rdatestr(d, dbuf);
  printf("q: %d ", q);
  if (q == 0)
  {
   printf("date %d: %s\n", i++, dbuf);
  }
  else
   printf("\n");
 }
 else
  check_return(r);
}
