
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WorkTableScanState ;
typedef int WindowAggState ;
typedef int ValuesScanState ;
typedef int UniqueState ;
typedef int TidScanState ;
typedef int TableFuncScanState ;
struct TYPE_4__ {int * chgParam; } ;
typedef int SubqueryScanState ;
typedef int SortState ;
typedef int SetOpState ;
typedef int SeqScanState ;
typedef int SampleScanState ;
typedef int ResultState ;
typedef int RecursiveUnionState ;
typedef int ProjectSetState ;
typedef TYPE_1__ PlanState ;
typedef int NestLoopState ;
typedef int NamedTuplestoreScanState ;
typedef int ModifyTableState ;
typedef int MergeJoinState ;
typedef int MergeAppendState ;
typedef int MaterialState ;
typedef int LockRowsState ;
typedef int LimitState ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int HashState ;
typedef int HashJoinState ;
typedef int GroupState ;
typedef int GatherState ;
typedef int GatherMergeState ;
typedef int FunctionScanState ;
typedef int ForeignScanState ;
typedef int CustomScanState ;
typedef int CteScanState ;
typedef int BitmapOrState ;
typedef int BitmapIndexScanState ;
typedef int BitmapHeapScanState ;
typedef int BitmapAndState ;
typedef int AppendState ;
typedef int AggState ;


 int ERROR ;
 int ExecEndAgg (int *) ;
 int ExecEndAppend (int *) ;
 int ExecEndBitmapAnd (int *) ;
 int ExecEndBitmapHeapScan (int *) ;
 int ExecEndBitmapIndexScan (int *) ;
 int ExecEndBitmapOr (int *) ;
 int ExecEndCteScan (int *) ;
 int ExecEndCustomScan (int *) ;
 int ExecEndForeignScan (int *) ;
 int ExecEndFunctionScan (int *) ;
 int ExecEndGather (int *) ;
 int ExecEndGatherMerge (int *) ;
 int ExecEndGroup (int *) ;
 int ExecEndHash (int *) ;
 int ExecEndHashJoin (int *) ;
 int ExecEndIndexOnlyScan (int *) ;
 int ExecEndIndexScan (int *) ;
 int ExecEndLimit (int *) ;
 int ExecEndLockRows (int *) ;
 int ExecEndMaterial (int *) ;
 int ExecEndMergeAppend (int *) ;
 int ExecEndMergeJoin (int *) ;
 int ExecEndModifyTable (int *) ;
 int ExecEndNamedTuplestoreScan (int *) ;
 int ExecEndNestLoop (int *) ;
 int ExecEndProjectSet (int *) ;
 int ExecEndRecursiveUnion (int *) ;
 int ExecEndResult (int *) ;
 int ExecEndSampleScan (int *) ;
 int ExecEndSeqScan (int *) ;
 int ExecEndSetOp (int *) ;
 int ExecEndSort (int *) ;
 int ExecEndSubqueryScan (int *) ;
 int ExecEndTableFuncScan (int *) ;
 int ExecEndTidScan (int *) ;
 int ExecEndUnique (int *) ;
 int ExecEndValuesScan (int *) ;
 int ExecEndWindowAgg (int *) ;
 int ExecEndWorkTableScan (int *) ;
 int bms_free (int *) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int nodeTag (TYPE_1__*) ;

void
ExecEndNode(PlanState *node)
{



 if (node == ((void*)0))
  return;






 check_stack_depth();

 if (node->chgParam != ((void*)0))
 {
  bms_free(node->chgParam);
  node->chgParam = ((void*)0);
 }

 switch (nodeTag(node))
 {



  case 139:
   ExecEndResult((ResultState *) node);
   break;

  case 141:
   ExecEndProjectSet((ProjectSetState *) node);
   break;

  case 144:
   ExecEndModifyTable((ModifyTableState *) node);
   break;

  case 165:
   ExecEndAppend((AppendState *) node);
   break;

  case 146:
   ExecEndMergeAppend((MergeAppendState *) node);
   break;

  case 140:
   ExecEndRecursiveUnion((RecursiveUnionState *) node);
   break;

  case 164:
   ExecEndBitmapAnd((BitmapAndState *) node);
   break;

  case 161:
   ExecEndBitmapOr((BitmapOrState *) node);
   break;




  case 137:
   ExecEndSeqScan((SeqScanState *) node);
   break;

  case 138:
   ExecEndSampleScan((SampleScanState *) node);
   break;

  case 155:
   ExecEndGather((GatherState *) node);
   break;

  case 156:
   ExecEndGatherMerge((GatherMergeState *) node);
   break;

  case 150:
   ExecEndIndexScan((IndexScanState *) node);
   break;

  case 151:
   ExecEndIndexOnlyScan((IndexOnlyScanState *) node);
   break;

  case 162:
   ExecEndBitmapIndexScan((BitmapIndexScanState *) node);
   break;

  case 163:
   ExecEndBitmapHeapScan((BitmapHeapScanState *) node);
   break;

  case 132:
   ExecEndTidScan((TidScanState *) node);
   break;

  case 134:
   ExecEndSubqueryScan((SubqueryScanState *) node);
   break;

  case 157:
   ExecEndFunctionScan((FunctionScanState *) node);
   break;

  case 133:
   ExecEndTableFuncScan((TableFuncScanState *) node);
   break;

  case 130:
   ExecEndValuesScan((ValuesScanState *) node);
   break;

  case 160:
   ExecEndCteScan((CteScanState *) node);
   break;

  case 143:
   ExecEndNamedTuplestoreScan((NamedTuplestoreScanState *) node);
   break;

  case 128:
   ExecEndWorkTableScan((WorkTableScanState *) node);
   break;

  case 158:
   ExecEndForeignScan((ForeignScanState *) node);
   break;

  case 159:
   ExecEndCustomScan((CustomScanState *) node);
   break;




  case 142:
   ExecEndNestLoop((NestLoopState *) node);
   break;

  case 145:
   ExecEndMergeJoin((MergeJoinState *) node);
   break;

  case 153:
   ExecEndHashJoin((HashJoinState *) node);
   break;




  case 147:
   ExecEndMaterial((MaterialState *) node);
   break;

  case 135:
   ExecEndSort((SortState *) node);
   break;

  case 154:
   ExecEndGroup((GroupState *) node);
   break;

  case 166:
   ExecEndAgg((AggState *) node);
   break;

  case 129:
   ExecEndWindowAgg((WindowAggState *) node);
   break;

  case 131:
   ExecEndUnique((UniqueState *) node);
   break;

  case 152:
   ExecEndHash((HashState *) node);
   break;

  case 136:
   ExecEndSetOp((SetOpState *) node);
   break;

  case 148:
   ExecEndLockRows((LockRowsState *) node);
   break;

  case 149:
   ExecEndLimit((LimitState *) node);
   break;

  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(node));
   break;
 }
}
