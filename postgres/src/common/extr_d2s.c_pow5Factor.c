
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef scalar_t__ uint32 ;


 int Assert (int) ;
 int div5 (int) ;

__attribute__((used)) static inline uint32
pow5Factor(uint64 value)
{
 uint32 count = 0;

 for (;;)
 {
  Assert(value != 0);
  const uint64 q = div5(value);
  const uint32 r = (uint32) (value - 5 * q);

  if (r != 0)
   break;

  value = q;
  ++count;
 }
 return count;
}
