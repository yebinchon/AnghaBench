
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rtekind; TYPE_1__* eref; int relid; TYPE_2__* alias; } ;
struct TYPE_6__ {int colnames; } ;
struct TYPE_5__ {int aliasname; int colnames; } ;
typedef TYPE_3__ RangeTblEntry ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 scalar_t__ RTE_RELATION ;
 int elog (int ,char*,scalar_t__,int ) ;
 char* get_attname (int ,scalar_t__,int) ;
 scalar_t__ list_length (int ) ;
 int list_nth (int ,scalar_t__) ;
 char* strVal (int ) ;

char *
get_rte_attribute_name(RangeTblEntry *rte, AttrNumber attnum)
{
 if (attnum == InvalidAttrNumber)
  return "*";




 if (rte->alias &&
  attnum > 0 && attnum <= list_length(rte->alias->colnames))
  return strVal(list_nth(rte->alias->colnames, attnum - 1));







 if (rte->rtekind == RTE_RELATION)
  return get_attname(rte->relid, attnum, 0);




 if (attnum > 0 && attnum <= list_length(rte->eref->colnames))
  return strVal(list_nth(rte->eref->colnames, attnum - 1));


 elog(ERROR, "invalid attnum %d for rangetable entry %s",
   attnum, rte->eref->aliasname);
 return ((void*)0);
}
