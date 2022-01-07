
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortState ;
typedef int ResultState ;
typedef int PlanState ;
typedef int MaterialState ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int CustomScanState ;


 int DEBUG2 ;
 int ExecCustomMarkPos (int *) ;
 int ExecIndexMarkPos (int *) ;
 int ExecIndexOnlyMarkPos (int *) ;
 int ExecMaterialMarkPos (int *) ;
 int ExecResultMarkPos (int *) ;
 int ExecSortMarkPos (int *) ;






 int elog (int ,char*,int) ;
 int nodeTag (int *) ;

void
ExecMarkPos(PlanState *node)
{
 switch (nodeTag(node))
 {
  case 131:
   ExecIndexMarkPos((IndexScanState *) node);
   break;

  case 132:
   ExecIndexOnlyMarkPos((IndexOnlyScanState *) node);
   break;

  case 133:
   ExecCustomMarkPos((CustomScanState *) node);
   break;

  case 130:
   ExecMaterialMarkPos((MaterialState *) node);
   break;

  case 128:
   ExecSortMarkPos((SortState *) node);
   break;

  case 129:
   ExecResultMarkPos((ResultState *) node);
   break;

  default:

   elog(DEBUG2, "unrecognized node type: %d", (int) nodeTag(node));
   break;
 }
}
