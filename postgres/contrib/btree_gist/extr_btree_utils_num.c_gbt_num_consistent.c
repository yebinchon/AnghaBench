
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* f_ge ) (void const*,void const*,int *) ;int (* f_gt ) (void const*,void const*,int *) ;int (* f_eq ) (void const*,void const*,int *) ;int (* f_le ) (void const*,void const*,int *) ;int (* f_lt ) (void const*,void const*,int *) ;} ;
typedef TYPE_1__ gbtree_ninfo ;
struct TYPE_6__ {void const* lower; void const* upper; } ;
typedef int StrategyNumber ;
typedef TYPE_2__ GBT_NUMKEY_R ;
typedef int FmgrInfo ;
 int stub1 (void const*,void const*,int *) ;
 int stub10 (void const*,void const*,int *) ;
 int stub11 (void const*,void const*,int *) ;
 int stub2 (void const*,void const*,int *) ;
 int stub3 (void const*,void const*,int *) ;
 int stub4 (void const*,void const*,int *) ;
 int stub5 (void const*,void const*,int *) ;
 int stub6 (void const*,void const*,int *) ;
 int stub7 (void const*,void const*,int *) ;
 int stub8 (void const*,void const*,int *) ;
 int stub9 (void const*,void const*,int *) ;

bool
gbt_num_consistent(const GBT_NUMKEY_R *key,
       const void *query,
       const StrategyNumber *strategy,
       bool is_leaf,
       const gbtree_ninfo *tinfo,
       FmgrInfo *flinfo)
{
 bool retval;

 switch (*strategy)
 {
  case 130:
   retval = tinfo->f_ge(query, key->lower, flinfo);
   break;
  case 129:
   if (is_leaf)
    retval = tinfo->f_gt(query, key->lower, flinfo);
   else
    retval = tinfo->f_ge(query, key->lower, flinfo);
   break;
  case 133:
   if (is_leaf)
    retval = tinfo->f_eq(query, key->lower, flinfo);
   else
    retval = (tinfo->f_le(key->lower, query, flinfo) &&
        tinfo->f_le(query, key->upper, flinfo));
   break;
  case 131:
   if (is_leaf)
    retval = tinfo->f_lt(query, key->upper, flinfo);
   else
    retval = tinfo->f_le(query, key->upper, flinfo);
   break;
  case 132:
   retval = tinfo->f_le(query, key->upper, flinfo);
   break;
  case 128:
   retval = (!(tinfo->f_eq(query, key->lower, flinfo) &&
      tinfo->f_eq(query, key->upper, flinfo)));
   break;
  default:
   retval = 0;
 }

 return retval;
}
