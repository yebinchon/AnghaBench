
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef scalar_t__ MultiXactOffset ;



__attribute__((used)) static bool
MultiXactOffsetPrecedes(MultiXactOffset offset1, MultiXactOffset offset2)
{
 int32 diff = (int32) (offset1 - offset2);

 return (diff < 0);
}
