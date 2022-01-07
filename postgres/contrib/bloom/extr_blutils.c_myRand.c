
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int next ;

__attribute__((used)) static int32
myRand(void)
{
 int32 hi,
    lo,
    x;


 hi = next / 127773;
 lo = next % 127773;
 x = 16807 * lo - 2836 * hi;
 if (x < 0)
  x += 0x7fffffff;
 next = x;

 return (x - 1);
}
