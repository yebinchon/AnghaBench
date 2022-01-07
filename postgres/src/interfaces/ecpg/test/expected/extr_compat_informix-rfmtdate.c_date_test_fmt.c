
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int check_return (int) ;
 int printf (char*,int,...) ;
 int rfmtdate (int ,char const*,char*) ;

__attribute__((used)) static void
date_test_fmt(date d, const char *fmt)
{
 static int i;
 char buf[200];
 int r;

 r = rfmtdate(d, fmt, buf);
 printf("r: %d ", r);
 if (r != 0)
  check_return(r);
 else
  printf("date: %d: %s\n", i++, buf);
}
