
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int Assert (int) ;

__attribute__((used)) static inline uint32
pow5Factor(uint32 value)
{
 uint32 count = 0;

 for (;;)
 {
  Assert(value != 0);
  const uint32 q = value / 5;
  const uint32 r = value % 5;

  if (r != 0)
   break;

  value = q;
  ++count;
 }
 return count;
}
