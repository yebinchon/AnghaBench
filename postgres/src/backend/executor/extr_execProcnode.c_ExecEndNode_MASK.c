#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WorkTableScanState ;
typedef  int /*<<< orphan*/  WindowAggState ;
typedef  int /*<<< orphan*/  ValuesScanState ;
typedef  int /*<<< orphan*/  UniqueState ;
typedef  int /*<<< orphan*/  TidScanState ;
typedef  int /*<<< orphan*/  TableFuncScanState ;
struct TYPE_4__ {int /*<<< orphan*/ * chgParam; } ;
typedef  int /*<<< orphan*/  SubqueryScanState ;
typedef  int /*<<< orphan*/  SortState ;
typedef  int /*<<< orphan*/  SetOpState ;
typedef  int /*<<< orphan*/  SeqScanState ;
typedef  int /*<<< orphan*/  SampleScanState ;
typedef  int /*<<< orphan*/  ResultState ;
typedef  int /*<<< orphan*/  RecursiveUnionState ;
typedef  int /*<<< orphan*/  ProjectSetState ;
typedef  TYPE_1__ PlanState ;
typedef  int /*<<< orphan*/  NestLoopState ;
typedef  int /*<<< orphan*/  NamedTuplestoreScanState ;
typedef  int /*<<< orphan*/  ModifyTableState ;
typedef  int /*<<< orphan*/  MergeJoinState ;
typedef  int /*<<< orphan*/  MergeAppendState ;
typedef  int /*<<< orphan*/  MaterialState ;
typedef  int /*<<< orphan*/  LockRowsState ;
typedef  int /*<<< orphan*/  LimitState ;
typedef  int /*<<< orphan*/  IndexScanState ;
typedef  int /*<<< orphan*/  IndexOnlyScanState ;
typedef  int /*<<< orphan*/  HashState ;
typedef  int /*<<< orphan*/  HashJoinState ;
typedef  int /*<<< orphan*/  GroupState ;
typedef  int /*<<< orphan*/  GatherState ;
typedef  int /*<<< orphan*/  GatherMergeState ;
typedef  int /*<<< orphan*/  FunctionScanState ;
typedef  int /*<<< orphan*/  ForeignScanState ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  int /*<<< orphan*/  CteScanState ;
typedef  int /*<<< orphan*/  BitmapOrState ;
typedef  int /*<<< orphan*/  BitmapIndexScanState ;
typedef  int /*<<< orphan*/  BitmapHeapScanState ;
typedef  int /*<<< orphan*/  BitmapAndState ;
typedef  int /*<<< orphan*/  AppendState ;
typedef  int /*<<< orphan*/  AggState ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
#define  T_AggState 166 
#define  T_AppendState 165 
#define  T_BitmapAndState 164 
#define  T_BitmapHeapScanState 163 
#define  T_BitmapIndexScanState 162 
#define  T_BitmapOrState 161 
#define  T_CteScanState 160 
#define  T_CustomScanState 159 
#define  T_ForeignScanState 158 
#define  T_FunctionScanState 157 
#define  T_GatherMergeState 156 
#define  T_GatherState 155 
#define  T_GroupState 154 
#define  T_HashJoinState 153 
#define  T_HashState 152 
#define  T_IndexOnlyScanState 151 
#define  T_IndexScanState 150 
#define  T_LimitState 149 
#define  T_LockRowsState 148 
#define  T_MaterialState 147 
#define  T_MergeAppendState 146 
#define  T_MergeJoinState 145 
#define  T_ModifyTableState 144 
#define  T_NamedTuplestoreScanState 143 
#define  T_NestLoopState 142 
#define  T_ProjectSetState 141 
#define  T_RecursiveUnionState 140 
#define  T_ResultState 139 
#define  T_SampleScanState 138 
#define  T_SeqScanState 137 
#define  T_SetOpState 136 
#define  T_SortState 135 
#define  T_SubqueryScanState 134 
#define  T_TableFuncScanState 133 
#define  T_TidScanState 132 
#define  T_UniqueState 131 
#define  T_ValuesScanState 130 
#define  T_WindowAggState 129 
#define  T_WorkTableScanState 128 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC42 (TYPE_1__*) ; 

void
FUNC43(PlanState *node)
{
	/*
	 * do nothing when we get to the end of a leaf on tree.
	 */
	if (node == NULL)
		return;

	/*
	 * Make sure there's enough stack available. Need to check here, in
	 * addition to ExecProcNode() (via ExecProcNodeFirst()), because it's not
	 * guaranteed that ExecProcNode() is reached for all nodes.
	 */
	FUNC40();

	if (node->chgParam != NULL)
	{
		FUNC39(node->chgParam);
		node->chgParam = NULL;
	}

	switch (FUNC42(node))
	{
			/*
			 * control nodes
			 */
		case T_ResultState:
			FUNC27((ResultState *) node);
			break;

		case T_ProjectSetState:
			FUNC25((ProjectSetState *) node);
			break;

		case T_ModifyTableState:
			FUNC22((ModifyTableState *) node);
			break;

		case T_AppendState:
			FUNC1((AppendState *) node);
			break;

		case T_MergeAppendState:
			FUNC20((MergeAppendState *) node);
			break;

		case T_RecursiveUnionState:
			FUNC26((RecursiveUnionState *) node);
			break;

		case T_BitmapAndState:
			FUNC2((BitmapAndState *) node);
			break;

		case T_BitmapOrState:
			FUNC5((BitmapOrState *) node);
			break;

			/*
			 * scan nodes
			 */
		case T_SeqScanState:
			FUNC29((SeqScanState *) node);
			break;

		case T_SampleScanState:
			FUNC28((SampleScanState *) node);
			break;

		case T_GatherState:
			FUNC10((GatherState *) node);
			break;

		case T_GatherMergeState:
			FUNC11((GatherMergeState *) node);
			break;

		case T_IndexScanState:
			FUNC16((IndexScanState *) node);
			break;

		case T_IndexOnlyScanState:
			FUNC15((IndexOnlyScanState *) node);
			break;

		case T_BitmapIndexScanState:
			FUNC4((BitmapIndexScanState *) node);
			break;

		case T_BitmapHeapScanState:
			FUNC3((BitmapHeapScanState *) node);
			break;

		case T_TidScanState:
			FUNC34((TidScanState *) node);
			break;

		case T_SubqueryScanState:
			FUNC32((SubqueryScanState *) node);
			break;

		case T_FunctionScanState:
			FUNC9((FunctionScanState *) node);
			break;

		case T_TableFuncScanState:
			FUNC33((TableFuncScanState *) node);
			break;

		case T_ValuesScanState:
			FUNC36((ValuesScanState *) node);
			break;

		case T_CteScanState:
			FUNC6((CteScanState *) node);
			break;

		case T_NamedTuplestoreScanState:
			FUNC23((NamedTuplestoreScanState *) node);
			break;

		case T_WorkTableScanState:
			FUNC38((WorkTableScanState *) node);
			break;

		case T_ForeignScanState:
			FUNC8((ForeignScanState *) node);
			break;

		case T_CustomScanState:
			FUNC7((CustomScanState *) node);
			break;

			/*
			 * join nodes
			 */
		case T_NestLoopState:
			FUNC24((NestLoopState *) node);
			break;

		case T_MergeJoinState:
			FUNC21((MergeJoinState *) node);
			break;

		case T_HashJoinState:
			FUNC14((HashJoinState *) node);
			break;

			/*
			 * materialization nodes
			 */
		case T_MaterialState:
			FUNC19((MaterialState *) node);
			break;

		case T_SortState:
			FUNC31((SortState *) node);
			break;

		case T_GroupState:
			FUNC12((GroupState *) node);
			break;

		case T_AggState:
			FUNC0((AggState *) node);
			break;

		case T_WindowAggState:
			FUNC37((WindowAggState *) node);
			break;

		case T_UniqueState:
			FUNC35((UniqueState *) node);
			break;

		case T_HashState:
			FUNC13((HashState *) node);
			break;

		case T_SetOpState:
			FUNC30((SetOpState *) node);
			break;

		case T_LockRowsState:
			FUNC18((LockRowsState *) node);
			break;

		case T_LimitState:
			FUNC17((LimitState *) node);
			break;

		default:
			FUNC41(ERROR, "unrecognized node type: %d", (int) FUNC42(node));
			break;
	}
}