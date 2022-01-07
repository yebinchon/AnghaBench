
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iss_NumOrderByKeys; TYPE_1__* iss_SortSupport; } ;
struct TYPE_5__ {int (* comparator ) (int const,int const,TYPE_1__*) ;} ;
typedef TYPE_1__* SortSupport ;
typedef TYPE_2__ IndexScanState ;
typedef int Datum ;


 int stub1 (int const,int const,TYPE_1__*) ;

__attribute__((used)) static int
cmp_orderbyvals(const Datum *adist, const bool *anulls,
    const Datum *bdist, const bool *bnulls,
    IndexScanState *node)
{
 int i;
 int result;

 for (i = 0; i < node->iss_NumOrderByKeys; i++)
 {
  SortSupport ssup = &node->iss_SortSupport[i];






  if (anulls[i] && !bnulls[i])
   return 1;
  else if (!anulls[i] && bnulls[i])
   return -1;
  else if (anulls[i] && bnulls[i])
   return 0;

  result = ssup->comparator(adist[i], bdist[i], ssup);
  if (result != 0)
   return result;
 }

 return 0;
}
