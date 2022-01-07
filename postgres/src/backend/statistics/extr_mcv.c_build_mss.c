
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attrcollid; int attrtypid; } ;
typedef TYPE_1__ VacAttrStats ;
struct TYPE_6__ {scalar_t__ lt_opr; } ;
typedef TYPE_2__ TypeCacheEntry ;
typedef int MultiSortSupport ;


 int ERROR ;
 scalar_t__ InvalidOid ;
 int TYPECACHE_LT_OPR ;
 int elog (int ,char*,int ) ;
 TYPE_2__* lookup_type_cache (int ,int ) ;
 int multi_sort_add_dimension (int ,int,scalar_t__,int ) ;
 int multi_sort_init (int) ;

__attribute__((used)) static MultiSortSupport
build_mss(VacAttrStats **stats, int numattrs)
{
 int i;


 MultiSortSupport mss = multi_sort_init(numattrs);


 for (i = 0; i < numattrs; i++)
 {
  VacAttrStats *colstat = stats[i];
  TypeCacheEntry *type;

  type = lookup_type_cache(colstat->attrtypid, TYPECACHE_LT_OPR);
  if (type->lt_opr == InvalidOid)
   elog(ERROR, "cache lookup failed for ordering operator for type %u",
     colstat->attrtypid);

  multi_sort_add_dimension(mss, i, type->lt_opr, colstat->attrcollid);
 }

 return mss;
}
