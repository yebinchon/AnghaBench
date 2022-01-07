
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long my_log2 (long) ;

__attribute__((used)) static long
next_pow2_long(long num)
{

 return 1L << my_log2(num);
}
