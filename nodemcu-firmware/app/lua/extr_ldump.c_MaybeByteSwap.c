
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int little_endian; } ;
struct TYPE_5__ {TYPE_1__ target; } ;
typedef TYPE_2__ DumpState ;



__attribute__((used)) static void MaybeByteSwap(char *number, size_t numbersize, DumpState *D)
{
 int x=1;
 int platform_little_endian = *(char*)&x;
 if (platform_little_endian != D->target.little_endian)
 {
  unsigned long i;
  for (i=0; i<numbersize/2; i++)
  {
   char temp = number[i];
   number[i] = number[numbersize-1-i];
   number[numbersize-1-i] = temp;
  }
 }
}
