
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONG_MAX ;

int
my_log2(long num)
{
 int i;
 long limit;


 if (num > LONG_MAX / 2)
  num = LONG_MAX / 2;

 for (i = 0, limit = 1; limit < num; i++, limit <<= 1)
  ;
 return i;
}
