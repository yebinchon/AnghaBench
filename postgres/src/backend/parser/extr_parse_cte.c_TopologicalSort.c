
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; int depends_on; TYPE_1__* cte; } ;
struct TYPE_4__ {int location; } ;
typedef int ParseState ;
typedef TYPE_2__ CteItem ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int bms_del_member (int ,int ) ;
 scalar_t__ bms_is_empty (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int parser_errposition (int *,int ) ;

__attribute__((used)) static void
TopologicalSort(ParseState *pstate, CteItem *items, int numitems)
{
 int i,
    j;


 for (i = 0; i < numitems; i++)
 {

  for (j = i; j < numitems; j++)
  {
   if (bms_is_empty(items[j].depends_on))
    break;
  }


  if (j >= numitems)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("mutual recursion between WITH items is not implemented"),
      parser_errposition(pstate, items[i].cte->location)));





  if (i != j)
  {
   CteItem tmp;

   tmp = items[i];
   items[i] = items[j];
   items[j] = tmp;
  }





  for (j = i + 1; j < numitems; j++)
  {
   items[j].depends_on = bms_del_member(items[j].depends_on,
             items[i].id);
  }
 }
}
