
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ float4 ;
struct TYPE_2__ {scalar_t__ penalty; } ;
typedef TYPE_1__ ColorTrgmInfo ;



__attribute__((used)) static int
colorTrgmInfoPenaltyCmp(const void *p1, const void *p2)
{
 float4 penalty1 = ((const ColorTrgmInfo *) p1)->penalty;
 float4 penalty2 = ((const ColorTrgmInfo *) p2)->penalty;

 if (penalty1 < penalty2)
  return 1;
 else if (penalty1 == penalty2)
  return 0;
 else
  return -1;
}
