
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sqlerrcode; } ;
struct TYPE_5__ {int sqlerrstate; struct TYPE_5__* next; } ;
typedef TYPE_1__ PLpgSQL_condition ;
typedef TYPE_2__ ErrorData ;


 int ERRCODE_ASSERT_FAILURE ;
 scalar_t__ ERRCODE_IS_CATEGORY (int) ;
 int ERRCODE_QUERY_CANCELED ;
 int ERRCODE_TO_CATEGORY (int) ;

__attribute__((used)) static bool
exception_matches_conditions(ErrorData *edata, PLpgSQL_condition *cond)
{
 for (; cond != ((void*)0); cond = cond->next)
 {
  int sqlerrstate = cond->sqlerrstate;






  if (sqlerrstate == 0)
  {
   if (edata->sqlerrcode != ERRCODE_QUERY_CANCELED &&
    edata->sqlerrcode != ERRCODE_ASSERT_FAILURE)
    return 1;
  }

  else if (edata->sqlerrcode == sqlerrstate)
   return 1;

  else if (ERRCODE_IS_CATEGORY(sqlerrstate) &&
     ERRCODE_TO_CATEGORY(edata->sqlerrcode) == sqlerrstate)
   return 1;
 }
 return 0;
}
