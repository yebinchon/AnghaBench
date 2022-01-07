
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sourceState; scalar_t__ colorTrgm; scalar_t__ targetState; } ;
typedef TYPE_1__ TrgmPackArcInfo ;



__attribute__((used)) static int
packArcInfoCmp(const void *a1, const void *a2)
{
 const TrgmPackArcInfo *p1 = (const TrgmPackArcInfo *) a1;
 const TrgmPackArcInfo *p2 = (const TrgmPackArcInfo *) a2;

 if (p1->sourceState < p2->sourceState)
  return -1;
 if (p1->sourceState > p2->sourceState)
  return 1;
 if (p1->colorTrgm < p2->colorTrgm)
  return -1;
 if (p1->colorTrgm > p2->colorTrgm)
  return 1;
 if (p1->targetState < p2->targetState)
  return -1;
 if (p1->targetState > p2->targetState)
  return 1;
 return 0;
}
