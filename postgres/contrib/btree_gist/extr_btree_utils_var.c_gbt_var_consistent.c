
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* f_ge ) (void const*,void const*,int ,int *) ;int (* f_gt ) (void const*,void const*,int ,int *) ;int (* f_eq ) (void const*,void const*,int ,int *) ;int (* f_lt ) (void const*,void const*,int ,int *) ;int (* f_le ) (void const*,void const*,int ,int *) ;int (* f_cmp ) (void const*,void const*,int ,int *) ;} ;
typedef TYPE_1__ gbtree_vinfo ;
struct TYPE_8__ {void const* lower; void const* upper; } ;
typedef int StrategyNumber ;
typedef int Oid ;
typedef TYPE_2__ GBT_VARKEY_R ;
typedef int FmgrInfo ;
 int gbt_var_node_pf_match (TYPE_2__*,void const*,TYPE_1__ const*) ;
 int stub1 (void const*,void const*,int ,int *) ;
 int stub10 (void const*,void const*,int ,int *) ;
 int stub11 (void const*,void const*,int ,int *) ;
 int stub12 (void const*,void const*,int ,int *) ;
 int stub13 (void const*,void const*,int ,int *) ;
 int stub2 (void const*,void const*,int ,int *) ;
 int stub3 (void const*,void const*,int ,int *) ;
 int stub4 (void const*,void const*,int ,int *) ;
 int stub5 (void const*,void const*,int ,int *) ;
 int stub6 (void const*,void const*,int ,int *) ;
 int stub7 (void const*,void const*,int ,int *) ;
 int stub8 (void const*,void const*,int ,int *) ;
 int stub9 (void const*,void const*,int ,int *) ;

bool
gbt_var_consistent(GBT_VARKEY_R *key,
       const void *query,
       StrategyNumber strategy,
       Oid collation,
       bool is_leaf,
       const gbtree_vinfo *tinfo,
       FmgrInfo *flinfo)
{
 bool retval = 0;

 switch (strategy)
 {
  case 130:
   if (is_leaf)
    retval = tinfo->f_ge(query, key->lower, collation, flinfo);
   else
    retval = tinfo->f_cmp(query, key->lower, collation, flinfo) >= 0
     || gbt_var_node_pf_match(key, query, tinfo);
   break;
  case 129:
   if (is_leaf)
    retval = tinfo->f_gt(query, key->lower, collation, flinfo);
   else
    retval = tinfo->f_cmp(query, key->lower, collation, flinfo) >= 0
     || gbt_var_node_pf_match(key, query, tinfo);
   break;
  case 133:
   if (is_leaf)
    retval = tinfo->f_eq(query, key->lower, collation, flinfo);
   else
    retval =
     (tinfo->f_cmp(key->lower, query, collation, flinfo) <= 0 &&
      tinfo->f_cmp(query, key->upper, collation, flinfo) <= 0) ||
     gbt_var_node_pf_match(key, query, tinfo);
   break;
  case 131:
   if (is_leaf)
    retval = tinfo->f_lt(query, key->upper, collation, flinfo);
   else
    retval = tinfo->f_cmp(query, key->upper, collation, flinfo) <= 0
     || gbt_var_node_pf_match(key, query, tinfo);
   break;
  case 132:
   if (is_leaf)
    retval = tinfo->f_le(query, key->upper, collation, flinfo);
   else
    retval = tinfo->f_cmp(query, key->upper, collation, flinfo) <= 0
     || gbt_var_node_pf_match(key, query, tinfo);
   break;
  case 128:
   retval = !(tinfo->f_eq(query, key->lower, collation, flinfo) &&
        tinfo->f_eq(query, key->upper, collation, flinfo));
   break;
  default:
   retval = 0;
 }

 return retval;
}
