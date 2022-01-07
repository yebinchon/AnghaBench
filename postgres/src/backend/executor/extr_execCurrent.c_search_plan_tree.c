
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int as_nplans; TYPE_3__** appendplans; } ;
struct TYPE_12__ {int ms_nplans; TYPE_3__** mergeplans; } ;
struct TYPE_11__ {int * chgParam; struct TYPE_11__* lefttree; } ;
struct TYPE_10__ {int ss_currentRelation; } ;
struct TYPE_9__ {TYPE_3__* subplan; } ;
typedef TYPE_1__ SubqueryScanState ;
typedef TYPE_2__ ScanState ;
typedef TYPE_3__ PlanState ;
typedef int Oid ;
typedef TYPE_4__ MergeAppendState ;
typedef TYPE_5__ AppendState ;


 int RelationGetRelid (int ) ;
 int nodeTag (TYPE_3__*) ;

__attribute__((used)) static ScanState *
search_plan_tree(PlanState *node, Oid table_oid,
     bool *pending_rescan)
{
 ScanState *result = ((void*)0);

 if (node == ((void*)0))
  return ((void*)0);
 switch (nodeTag(node))
 {



  case 130:
  case 131:
  case 135:
  case 136:
  case 139:
  case 128:
  case 137:
  case 138:
   {
    ScanState *sstate = (ScanState *) node;

    if (RelationGetRelid(sstate->ss_currentRelation) == table_oid)
     result = sstate;
    break;
   }





  case 140:
   {
    AppendState *astate = (AppendState *) node;
    int i;

    for (i = 0; i < astate->as_nplans; i++)
    {
     ScanState *elem = search_plan_tree(astate->appendplans[i],
              table_oid,
              pending_rescan);

     if (!elem)
      continue;
     if (result)
      return ((void*)0);
     result = elem;
    }
    break;
   }




  case 133:
   {
    MergeAppendState *mstate = (MergeAppendState *) node;
    int i;

    for (i = 0; i < mstate->ms_nplans; i++)
    {
     ScanState *elem = search_plan_tree(mstate->mergeplans[i],
              table_oid,
              pending_rescan);

     if (!elem)
      continue;
     if (result)
      return ((void*)0);
     result = elem;
    }
    break;
   }





  case 132:
  case 134:
   result = search_plan_tree(node->lefttree,
           table_oid,
           pending_rescan);
   break;




  case 129:
   result = search_plan_tree(((SubqueryScanState *) node)->subplan,
           table_oid,
           pending_rescan);
   break;

  default:

   break;
 }





 if (result && node->chgParam != ((void*)0))
  *pending_rescan = 1;

 return result;
}
