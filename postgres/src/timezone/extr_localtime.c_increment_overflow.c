
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const INT_MAX ;
 int const INT_MIN ;

__attribute__((used)) static bool
increment_overflow(int *ip, int j)
{
 int const i = *ip;
 if ((i >= 0) ? (j > INT_MAX - i) : (j < INT_MIN - i))
  return 1;
 *ip += j;
 return 0;
}
