
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dataLength; scalar_t__ dumpId; } ;
typedef TYPE_1__ TocEntry ;



__attribute__((used)) static int
TocEntrySizeCompare(const void *p1, const void *p2)
{
 const TocEntry *te1 = *(const TocEntry *const *) p1;
 const TocEntry *te2 = *(const TocEntry *const *) p2;


 if (te1->dataLength > te2->dataLength)
  return -1;
 if (te1->dataLength < te2->dataLength)
  return 1;


 if (te1->dumpId < te2->dumpId)
  return -1;
 if (te1->dumpId > te2->dumpId)
  return 1;

 return 0;
}
