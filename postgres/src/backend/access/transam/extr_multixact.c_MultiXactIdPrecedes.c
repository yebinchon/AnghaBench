
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef scalar_t__ MultiXactId ;



bool
MultiXactIdPrecedes(MultiXactId multi1, MultiXactId multi2)
{
 int32 diff = (int32) (multi1 - multi2);

 return (diff < 0);
}
