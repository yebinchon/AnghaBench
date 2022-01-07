
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int my_log2 (long) ;

__attribute__((used)) static int
next_pow2_int(long num)
{
 if (num > INT_MAX / 2)
  num = INT_MAX / 2;
 return 1 << my_log2(num);
}
