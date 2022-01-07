
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ val; int left; } ;
typedef TYPE_1__ ITEM ;


 scalar_t__ VAL ;
 int check_stack_depth () ;

__attribute__((used)) static bool
contains_required_value(ITEM *curitem)
{

 check_stack_depth();

 if (curitem->type == VAL)
  return 1;
 else if (curitem->val == (int32) '!')
 {





  return 0;
 }
 else if (curitem->val == (int32) '&')
 {

  if (contains_required_value(curitem + curitem->left))
   return 1;
  else
   return contains_required_value(curitem - 1);
 }
 else
 {

  if (contains_required_value(curitem + curitem->left))
   return contains_required_value(curitem - 1);
  else
   return 0;
 }
}
