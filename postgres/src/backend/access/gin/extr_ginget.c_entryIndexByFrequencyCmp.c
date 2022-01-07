
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {TYPE_1__** scanEntry; } ;
struct TYPE_3__ {scalar_t__ predictNumberResult; } ;
typedef TYPE_2__* GinScanKey ;



__attribute__((used)) static int
entryIndexByFrequencyCmp(const void *a1, const void *a2, void *arg)
{
 const GinScanKey key = (const GinScanKey) arg;
 int i1 = *(const int *) a1;
 int i2 = *(const int *) a2;
 uint32 n1 = key->scanEntry[i1]->predictNumberResult;
 uint32 n2 = key->scanEntry[i2]->predictNumberResult;

 if (n1 < n2)
  return -1;
 else if (n1 == n2)
  return 0;
 else
  return 1;
}
