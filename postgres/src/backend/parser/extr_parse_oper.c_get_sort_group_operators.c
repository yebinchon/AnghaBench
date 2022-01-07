
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash_proc; int gt_opr; int eq_opr; int lt_opr; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Oid ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int OidIsValid (int ) ;
 int TYPECACHE_EQ_OPR ;
 int TYPECACHE_GT_OPR ;
 int TYPECACHE_HASH_PROC ;
 int TYPECACHE_LT_OPR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 TYPE_1__* lookup_type_cache (int ,int) ;

void
get_sort_group_operators(Oid argtype,
       bool needLT, bool needEQ, bool needGT,
       Oid *ltOpr, Oid *eqOpr, Oid *gtOpr,
       bool *isHashable)
{
 TypeCacheEntry *typentry;
 int cache_flags;
 Oid lt_opr;
 Oid eq_opr;
 Oid gt_opr;
 bool hashable;







 if (isHashable != ((void*)0))
  cache_flags = TYPECACHE_LT_OPR | TYPECACHE_EQ_OPR | TYPECACHE_GT_OPR |
   TYPECACHE_HASH_PROC;
 else
  cache_flags = TYPECACHE_LT_OPR | TYPECACHE_EQ_OPR | TYPECACHE_GT_OPR;

 typentry = lookup_type_cache(argtype, cache_flags);
 lt_opr = typentry->lt_opr;
 eq_opr = typentry->eq_opr;
 gt_opr = typentry->gt_opr;
 hashable = OidIsValid(typentry->hash_proc);


 if ((needLT && !OidIsValid(lt_opr)) ||
  (needGT && !OidIsValid(gt_opr)))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("could not identify an ordering operator for type %s",
      format_type_be(argtype)),
     errhint("Use an explicit ordering operator or modify the query.")));
 if (needEQ && !OidIsValid(eq_opr))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("could not identify an equality operator for type %s",
      format_type_be(argtype))));


 if (ltOpr)
  *ltOpr = lt_opr;
 if (eqOpr)
  *eqOpr = eq_opr;
 if (gtOpr)
  *gtOpr = gt_opr;
 if (isHashable)
  *isHashable = hashable;
}
