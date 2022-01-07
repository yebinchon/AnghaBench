
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ val; int left; } ;
typedef TYPE_1__ ITEM ;


 scalar_t__ VAL ;
 int check_stack_depth () ;
 int stub1 (void*,TYPE_1__*) ;

bool
ltree_execute(ITEM *curitem, void *checkval, bool calcnot, bool (*chkcond) (void *checkval, ITEM *val))
{

 check_stack_depth();

 if (curitem->type == VAL)
  return (*chkcond) (checkval, curitem);
 else if (curitem->val == (int32) '!')
 {
  return calcnot ?
   ((ltree_execute(curitem + 1, checkval, calcnot, chkcond)) ? 0 : 1)
   : 1;
 }
 else if (curitem->val == (int32) '&')
 {
  if (ltree_execute(curitem + curitem->left, checkval, calcnot, chkcond))
   return ltree_execute(curitem + 1, checkval, calcnot, chkcond);
  else
   return 0;
 }
 else
 {
  if (ltree_execute(curitem + curitem->left, checkval, calcnot, chkcond))
   return 1;
  else
   return ltree_execute(curitem + 1, checkval, calcnot, chkcond);
 }
}
