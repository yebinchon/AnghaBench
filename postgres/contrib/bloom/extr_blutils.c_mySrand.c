
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int next ;

__attribute__((used)) static void
mySrand(uint32 seed)
{
 next = seed;

 next = (next % 0x7ffffffe) + 1;
}
