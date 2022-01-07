
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


 int ERROR ;
 int ExecCustomRestrPos (int *) ;
 int ExecIndexOnlyRestrPos (int *) ;
 int ExecIndexRestrPos (int *) ;
 int ExecMaterialRestrPos (int *) ;
 int ExecResultRestrPos (int *) ;
 int ExecSortRestrPos (int *) ;






 int elog (int ,char*,int) ;
 int nodeTag (int *) ;

void
ExecRestrPos(PlanState *node)
{
 switch (nodeTag(node))
 {
  case 131:
   ExecIndexRestrPos((IndexScanState *) node);
   break;

  case 132:
   ExecIndexOnlyRestrPos((IndexOnlyScanState *) node);
   break;

  case 133:
   ExecCustomRestrPos((CustomScanState *) node);
   break;

  case 130:
   ExecMaterialRestrPos((MaterialState *) node);
   break;

  case 128:
   ExecSortRestrPos((SortState *) node);
   break;

  case 129:
   ExecResultRestrPos((ResultState *) node);
   break;

  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(node));
   break;
 }
}
