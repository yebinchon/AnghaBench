
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int check_return (int) ;
 int printf (char*,...) ;
 int rdatestr (int ,char*) ;
 int rdefmtdate (int *,char const*,char const*) ;

__attribute__((used)) static void
date_test_defmt(const char *fmt, const char *input)
{
 static int i;
 char dbuf[11];
 date d;
 int q, r;

 r = rdefmtdate(&d, fmt, input);
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
