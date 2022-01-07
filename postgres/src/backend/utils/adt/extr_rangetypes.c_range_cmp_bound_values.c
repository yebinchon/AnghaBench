
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rng_collation; int rng_cmp_proc_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_7__ {scalar_t__ lower; int val; scalar_t__ infinite; } ;
typedef TYPE_2__ RangeBound ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

int
range_cmp_bound_values(TypeCacheEntry *typcache, const RangeBound *b1,
        const RangeBound *b2)
{




 if (b1->infinite && b2->infinite)
 {




  if (b1->lower == b2->lower)
   return 0;
  else
   return b1->lower ? -1 : 1;
 }
 else if (b1->infinite)
  return b1->lower ? -1 : 1;
 else if (b2->infinite)
  return b2->lower ? 1 : -1;




 return DatumGetInt32(FunctionCall2Coll(&typcache->rng_cmp_proc_finfo,
             typcache->rng_collation,
             b1->val, b2->val));
}
