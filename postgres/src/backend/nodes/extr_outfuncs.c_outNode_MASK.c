#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  BitString ; 
 int /*<<< orphan*/  Float ; 
 int /*<<< orphan*/  IntList ; 
 int /*<<< orphan*/  Integer ; 
 scalar_t__ FUNC0 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  List ; 
 int /*<<< orphan*/  OidList ; 
 int /*<<< orphan*/  String ; 
#define  T_A_ArrayExpr 339 
#define  T_A_Const 338 
#define  T_A_Expr 337 
#define  T_A_Indices 336 
#define  T_A_Indirection 335 
#define  T_A_Star 334 
#define  T_Agg 333 
#define  T_AggPath 332 
#define  T_Aggref 331 
#define  T_Alias 330 
#define  T_AlterStatsStmt 329 
#define  T_AlternativeSubPlan 328 
#define  T_Append 327 
#define  T_AppendPath 326 
#define  T_AppendRelInfo 325 
#define  T_ArrayCoerceExpr 324 
#define  T_ArrayExpr 323 
#define  T_BitmapAnd 322 
#define  T_BitmapAndPath 321 
#define  T_BitmapHeapPath 320 
#define  T_BitmapHeapScan 319 
#define  T_BitmapIndexScan 318 
#define  T_BitmapOr 317 
#define  T_BitmapOrPath 316 
#define  T_BoolExpr 315 
#define  T_BooleanTest 314 
#define  T_CaseExpr 313 
#define  T_CaseTestExpr 312 
#define  T_CaseWhen 311 
#define  T_CoalesceExpr 310 
#define  T_CoerceToDomain 309 
#define  T_CoerceToDomainValue 308 
#define  T_CoerceViaIO 307 
#define  T_CollateClause 306 
#define  T_CollateExpr 305 
#define  T_ColumnDef 304 
#define  T_ColumnRef 303 
#define  T_CommonTableExpr 302 
#define  T_Const 301 
#define  T_Constraint 300 
#define  T_ConvertRowtypeExpr 299 
#define  T_CreateForeignTableStmt 298 
#define  T_CreateStatsStmt 297 
#define  T_CreateStmt 296 
#define  T_CteScan 295 
#define  T_CurrentOfExpr 294 
#define  T_CustomPath 293 
#define  T_CustomScan 292 
#define  T_DeclareCursorStmt 291 
#define  T_DefElem 290 
#define  T_DistinctExpr 289 
#define  T_EquivalenceClass 288 
#define  T_EquivalenceMember 287 
#define  T_ExtensibleNode 286 
#define  T_FieldSelect 285 
#define  T_FieldStore 284 
#define  T_ForeignKeyCacheInfo 283 
#define  T_ForeignKeyOptInfo 282 
#define  T_ForeignPath 281 
#define  T_ForeignScan 280 
#define  T_FromExpr 279 
#define  T_FuncCall 278 
#define  T_FuncExpr 277 
#define  T_FunctionScan 276 
#define  T_Gather 275 
#define  T_GatherMerge 274 
#define  T_GatherMergePath 273 
#define  T_GatherPath 272 
#define  T_Group 271 
#define  T_GroupPath 270 
#define  T_GroupResultPath 269 
#define  T_GroupingFunc 268 
#define  T_GroupingSet 267 
#define  T_GroupingSetData 266 
#define  T_GroupingSetsPath 265 
#define  T_Hash 264 
#define  T_HashJoin 263 
#define  T_HashPath 262 
#define  T_ImportForeignSchemaStmt 261 
#define  T_IndexClause 260 
#define  T_IndexElem 259 
#define  T_IndexOnlyScan 258 
#define  T_IndexOptInfo 257 
#define  T_IndexPath 256 
#define  T_IndexScan 255 
#define  T_IndexStmt 254 
#define  T_InferenceElem 253 
#define  T_IntoClause 252 
#define  T_Join 251 
#define  T_JoinExpr 250 
#define  T_Limit 249 
#define  T_LimitPath 248 
#define  T_LockRows 247 
#define  T_LockRowsPath 246 
#define  T_LockingClause 245 
#define  T_Material 244 
#define  T_MaterialPath 243 
#define  T_MergeAppend 242 
#define  T_MergeAppendPath 241 
#define  T_MergeJoin 240 
#define  T_MergePath 239 
#define  T_MinMaxAggInfo 238 
#define  T_MinMaxAggPath 237 
#define  T_MinMaxExpr 236 
#define  T_ModifyTable 235 
#define  T_ModifyTablePath 234 
#define  T_MultiAssignRef 233 
#define  T_NamedArgExpr 232 
#define  T_NamedTuplestoreScan 231 
#define  T_NestLoop 230 
#define  T_NestLoopParam 229 
#define  T_NestPath 228 
#define  T_NextValueExpr 227 
#define  T_NotifyStmt 226 
#define  T_NullIfExpr 225 
#define  T_NullTest 224 
#define  T_OnConflictExpr 223 
#define  T_OpExpr 222 
#define  T_Param 221 
#define  T_ParamPathInfo 220 
#define  T_ParamRef 219 
#define  T_PartitionBoundSpec 218 
#define  T_PartitionElem 217 
#define  T_PartitionPruneInfo 216 
#define  T_PartitionPruneStepCombine 215 
#define  T_PartitionPruneStepOp 214 
#define  T_PartitionRangeDatum 213 
#define  T_PartitionSpec 212 
#define  T_PartitionedRelPruneInfo 211 
#define  T_Path 210 
#define  T_PathKey 209 
#define  T_PathTarget 208 
#define  T_PlaceHolderInfo 207 
#define  T_PlaceHolderVar 206 
#define  T_Plan 205 
#define  T_PlanInvalItem 204 
#define  T_PlanRowMark 203 
#define  T_PlannedStmt 202 
#define  T_PlannerGlobal 201 
#define  T_PlannerInfo 200 
#define  T_PlannerParamItem 199 
#define  T_ProjectSet 198 
#define  T_ProjectSetPath 197 
#define  T_ProjectionPath 196 
#define  T_Query 195 
#define  T_RangeFunction 194 
#define  T_RangeSubselect 193 
#define  T_RangeTableFunc 192 
#define  T_RangeTableFuncCol 191 
#define  T_RangeTableSample 190 
#define  T_RangeTblEntry 189 
#define  T_RangeTblFunction 188 
#define  T_RangeTblRef 187 
#define  T_RangeVar 186 
#define  T_RawStmt 185 
#define  T_RecursiveUnion 184 
#define  T_RecursiveUnionPath 183 
#define  T_RelOptInfo 182 
#define  T_RelabelType 181 
#define  T_ResTarget 180 
#define  T_RestrictInfo 179 
#define  T_Result 178 
#define  T_RollupData 177 
#define  T_RowCompareExpr 176 
#define  T_RowExpr 175 
#define  T_RowMarkClause 174 
#define  T_SQLValueFunction 173 
#define  T_SampleScan 172 
#define  T_ScalarArrayOpExpr 171 
#define  T_Scan 170 
#define  T_SelectStmt 169 
#define  T_SeqScan 168 
#define  T_SetOp 167 
#define  T_SetOpPath 166 
#define  T_SetOperationStmt 165 
#define  T_SetToDefault 164 
#define  T_Sort 163 
#define  T_SortBy 162 
#define  T_SortGroupClause 161 
#define  T_SortPath 160 
#define  T_SpecialJoinInfo 159 
#define  T_StatisticExtInfo 158 
#define  T_SubLink 157 
#define  T_SubPlan 156 
#define  T_SubqueryScan 155 
#define  T_SubqueryScanPath 154 
#define  T_SubscriptingRef 153 
#define  T_TableFunc 152 
#define  T_TableFuncScan 151 
#define  T_TableLikeClause 150 
#define  T_TableSampleClause 149 
#define  T_TargetEntry 148 
#define  T_TidPath 147 
#define  T_TidScan 146 
#define  T_TriggerTransition 145 
#define  T_TypeCast 144 
#define  T_TypeName 143 
#define  T_Unique 142 
#define  T_UniquePath 141 
#define  T_UpperUniquePath 140 
#define  T_ValuesScan 139 
#define  T_Var 138 
#define  T_WindowAgg 137 
#define  T_WindowAggPath 136 
#define  T_WindowClause 135 
#define  T_WindowDef 134 
#define  T_WindowFunc 133 
#define  T_WithCheckOption 132 
#define  T_WithClause 131 
#define  T_WorkTableScan 130 
#define  T_XmlExpr 129 
#define  T_XmlSerialize 128 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC63 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC64 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC65 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC66 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC67 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC68 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC69 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC70 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC71 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC72 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC73 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC74 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC75 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC76 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC77 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC78 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC79 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC80 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC81 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC82 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC83 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC84 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC85 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC86 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC87 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC88 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC89 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC90 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC91 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC92 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC93 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC94 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC95 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC96 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC97 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC98 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC99 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC100 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC101 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC102 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC103 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC104 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC105 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC106 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC107 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC108 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC109 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC110 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC111 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC112 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC113 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC114 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC115 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC116 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC117 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC118 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC119 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC120 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC121 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC122 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC123 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC124 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC125 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC126 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC127 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC128 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC129 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC130 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC131 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC132 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC133 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC134 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC135 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC136 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC137 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC138 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC139 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC140 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC141 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC142 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC143 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC144 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC145 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC146 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC147 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC148 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC149 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC150 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC151 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC152 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC153 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC154 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC155 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC156 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC157 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC158 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC159 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC160 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC161 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC162 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC163 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC164 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC165 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC166 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC167 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC168 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC169 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC170 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC171 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC172 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC173 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC174 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC175 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC176 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC177 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC178 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC179 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC180 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC181 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC182 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC183 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC184 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC185 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC186 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC187 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC188 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC189 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC190 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC191 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC192 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC193 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC194 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC195 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC196 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC197 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC198 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC199 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC200 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC201 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC202 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC203 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC204 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC205 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC206 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC207 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC208 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC209 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC210 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC211 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC212 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC213 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC214 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC215 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC216 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC217 () ; 
 int /*<<< orphan*/  FUNC218 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC219 (void const*) ; 

void
FUNC220(StringInfo str, const void *obj)
{
	/* Guard against stack overflow due to overly complex expressions */
	FUNC217();

	if (obj == NULL)
		FUNC216(str, "<>");
	else if (FUNC0(obj, List) ||FUNC0(obj, IntList) || FUNC0(obj, OidList))
		FUNC93(str, obj);
	else if (FUNC0(obj, Integer) ||
			 FUNC0(obj, Float) ||
			 FUNC0(obj, String) ||
			 FUNC0(obj, BitString))
	{
		/* nodeRead does not want to see { } around these! */
		FUNC202(str, obj);
	}
	else
	{
		FUNC215(str, '{');
		switch (FUNC219(obj))
		{
			case T_PlannedStmt:
				FUNC139(str, obj);
				break;
			case T_Plan:
				FUNC136(str, obj);
				break;
			case T_Result:
				FUNC163(str, obj);
				break;
			case T_ProjectSet:
				FUNC143(str, obj);
				break;
			case T_ModifyTable:
				FUNC106(str, obj);
				break;
			case T_Append:
				FUNC13(str, obj);
				break;
			case T_MergeAppend:
				FUNC99(str, obj);
				break;
			case T_RecursiveUnion:
				FUNC157(str, obj);
				break;
			case T_BitmapAnd:
				FUNC18(str, obj);
				break;
			case T_BitmapOr:
				FUNC23(str, obj);
				break;
			case T_Gather:
				FUNC65(str, obj);
				break;
			case T_GatherMerge:
				FUNC66(str, obj);
				break;
			case T_Scan:
				FUNC171(str, obj);
				break;
			case T_SeqScan:
				FUNC173(str, obj);
				break;
			case T_SampleScan:
				FUNC169(str, obj);
				break;
			case T_IndexScan:
				FUNC85(str, obj);
				break;
			case T_IndexOnlyScan:
				FUNC82(str, obj);
				break;
			case T_BitmapIndexScan:
				FUNC22(str, obj);
				break;
			case T_BitmapHeapScan:
				FUNC21(str, obj);
				break;
			case T_TidScan:
				FUNC195(str, obj);
				break;
			case T_SubqueryScan:
				FUNC186(str, obj);
				break;
			case T_FunctionScan:
				FUNC64(str, obj);
				break;
			case T_TableFuncScan:
				FUNC190(str, obj);
				break;
			case T_ValuesScan:
				FUNC203(str, obj);
				break;
			case T_CteScan:
				FUNC45(str, obj);
				break;
			case T_NamedTuplestoreScan:
				FUNC110(str, obj);
				break;
			case T_WorkTableScan:
				FUNC212(str, obj);
				break;
			case T_ForeignScan:
				FUNC60(str, obj);
				break;
			case T_CustomScan:
				FUNC48(str, obj);
				break;
			case T_Join:
				FUNC89(str, obj);
				break;
			case T_NestLoop:
				FUNC111(str, obj);
				break;
			case T_MergeJoin:
				FUNC101(str, obj);
				break;
			case T_HashJoin:
				FUNC77(str, obj);
				break;
			case T_Agg:
				FUNC7(str, obj);
				break;
			case T_WindowAgg:
				FUNC205(str, obj);
				break;
			case T_Group:
				FUNC69(str, obj);
				break;
			case T_Material:
				FUNC97(str, obj);
				break;
			case T_Sort:
				FUNC178(str, obj);
				break;
			case T_Unique:
				FUNC199(str, obj);
				break;
			case T_Hash:
				FUNC76(str, obj);
				break;
			case T_SetOp:
				FUNC174(str, obj);
				break;
			case T_LockRows:
				FUNC94(str, obj);
				break;
			case T_Limit:
				FUNC91(str, obj);
				break;
			case T_NestLoopParam:
				FUNC112(str, obj);
				break;
			case T_PlanRowMark:
				FUNC138(str, obj);
				break;
			case T_PartitionPruneInfo:
				FUNC125(str, obj);
				break;
			case T_PartitionedRelPruneInfo:
				FUNC130(str, obj);
				break;
			case T_PartitionPruneStepOp:
				FUNC127(str, obj);
				break;
			case T_PartitionPruneStepCombine:
				FUNC126(str, obj);
				break;
			case T_PlanInvalItem:
				FUNC137(str, obj);
				break;
			case T_Alias:
				FUNC10(str, obj);
				break;
			case T_RangeVar:
				FUNC155(str, obj);
				break;
			case T_TableFunc:
				FUNC189(str, obj);
				break;
			case T_IntoClause:
				FUNC88(str, obj);
				break;
			case T_Var:
				FUNC204(str, obj);
				break;
			case T_Const:
				FUNC39(str, obj);
				break;
			case T_Param:
				FUNC120(str, obj);
				break;
			case T_Aggref:
				FUNC9(str, obj);
				break;
			case T_GroupingFunc:
				FUNC72(str, obj);
				break;
			case T_WindowFunc:
				FUNC209(str, obj);
				break;
			case T_SubscriptingRef:
				FUNC188(str, obj);
				break;
			case T_FuncExpr:
				FUNC63(str, obj);
				break;
			case T_NamedArgExpr:
				FUNC109(str, obj);
				break;
			case T_OpExpr:
				FUNC119(str, obj);
				break;
			case T_DistinctExpr:
				FUNC51(str, obj);
				break;
			case T_NullIfExpr:
				FUNC116(str, obj);
				break;
			case T_ScalarArrayOpExpr:
				FUNC170(str, obj);
				break;
			case T_BoolExpr:
				FUNC25(str, obj);
				break;
			case T_SubLink:
				FUNC184(str, obj);
				break;
			case T_SubPlan:
				FUNC185(str, obj);
				break;
			case T_AlternativeSubPlan:
				FUNC12(str, obj);
				break;
			case T_FieldSelect:
				FUNC55(str, obj);
				break;
			case T_FieldStore:
				FUNC56(str, obj);
				break;
			case T_RelabelType:
				FUNC160(str, obj);
				break;
			case T_CoerceViaIO:
				FUNC33(str, obj);
				break;
			case T_ArrayCoerceExpr:
				FUNC16(str, obj);
				break;
			case T_ConvertRowtypeExpr:
				FUNC41(str, obj);
				break;
			case T_CollateExpr:
				FUNC35(str, obj);
				break;
			case T_CaseExpr:
				FUNC27(str, obj);
				break;
			case T_CaseWhen:
				FUNC29(str, obj);
				break;
			case T_CaseTestExpr:
				FUNC28(str, obj);
				break;
			case T_ArrayExpr:
				FUNC17(str, obj);
				break;
			case T_RowExpr:
				FUNC166(str, obj);
				break;
			case T_RowCompareExpr:
				FUNC165(str, obj);
				break;
			case T_CoalesceExpr:
				FUNC30(str, obj);
				break;
			case T_MinMaxExpr:
				FUNC105(str, obj);
				break;
			case T_SQLValueFunction:
				FUNC168(str, obj);
				break;
			case T_XmlExpr:
				FUNC213(str, obj);
				break;
			case T_NullTest:
				FUNC117(str, obj);
				break;
			case T_BooleanTest:
				FUNC26(str, obj);
				break;
			case T_CoerceToDomain:
				FUNC31(str, obj);
				break;
			case T_CoerceToDomainValue:
				FUNC32(str, obj);
				break;
			case T_SetToDefault:
				FUNC177(str, obj);
				break;
			case T_CurrentOfExpr:
				FUNC46(str, obj);
				break;
			case T_NextValueExpr:
				FUNC114(str, obj);
				break;
			case T_InferenceElem:
				FUNC87(str, obj);
				break;
			case T_TargetEntry:
				FUNC193(str, obj);
				break;
			case T_RangeTblRef:
				FUNC154(str, obj);
				break;
			case T_JoinExpr:
				FUNC90(str, obj);
				break;
			case T_FromExpr:
				FUNC61(str, obj);
				break;
			case T_OnConflictExpr:
				FUNC118(str, obj);
				break;
			case T_Path:
				FUNC131(str, obj);
				break;
			case T_IndexPath:
				FUNC84(str, obj);
				break;
			case T_BitmapHeapPath:
				FUNC20(str, obj);
				break;
			case T_BitmapAndPath:
				FUNC19(str, obj);
				break;
			case T_BitmapOrPath:
				FUNC24(str, obj);
				break;
			case T_TidPath:
				FUNC194(str, obj);
				break;
			case T_SubqueryScanPath:
				FUNC187(str, obj);
				break;
			case T_ForeignPath:
				FUNC59(str, obj);
				break;
			case T_CustomPath:
				FUNC47(str, obj);
				break;
			case T_AppendPath:
				FUNC14(str, obj);
				break;
			case T_MergeAppendPath:
				FUNC100(str, obj);
				break;
			case T_GroupResultPath:
				FUNC71(str, obj);
				break;
			case T_MaterialPath:
				FUNC98(str, obj);
				break;
			case T_UniquePath:
				FUNC200(str, obj);
				break;
			case T_GatherPath:
				FUNC68(str, obj);
				break;
			case T_ProjectionPath:
				FUNC145(str, obj);
				break;
			case T_ProjectSetPath:
				FUNC144(str, obj);
				break;
			case T_SortPath:
				FUNC181(str, obj);
				break;
			case T_GroupPath:
				FUNC70(str, obj);
				break;
			case T_UpperUniquePath:
				FUNC201(str, obj);
				break;
			case T_AggPath:
				FUNC8(str, obj);
				break;
			case T_GroupingSetsPath:
				FUNC75(str, obj);
				break;
			case T_MinMaxAggPath:
				FUNC104(str, obj);
				break;
			case T_WindowAggPath:
				FUNC206(str, obj);
				break;
			case T_SetOpPath:
				FUNC175(str, obj);
				break;
			case T_RecursiveUnionPath:
				FUNC158(str, obj);
				break;
			case T_LockRowsPath:
				FUNC95(str, obj);
				break;
			case T_ModifyTablePath:
				FUNC107(str, obj);
				break;
			case T_LimitPath:
				FUNC92(str, obj);
				break;
			case T_GatherMergePath:
				FUNC67(str, obj);
				break;
			case T_NestPath:
				FUNC113(str, obj);
				break;
			case T_MergePath:
				FUNC102(str, obj);
				break;
			case T_HashPath:
				FUNC78(str, obj);
				break;
			case T_PlannerGlobal:
				FUNC140(str, obj);
				break;
			case T_PlannerInfo:
				FUNC141(str, obj);
				break;
			case T_RelOptInfo:
				FUNC159(str, obj);
				break;
			case T_IndexOptInfo:
				FUNC83(str, obj);
				break;
			case T_ForeignKeyOptInfo:
				FUNC58(str, obj);
				break;
			case T_EquivalenceClass:
				FUNC52(str, obj);
				break;
			case T_EquivalenceMember:
				FUNC53(str, obj);
				break;
			case T_PathKey:
				FUNC132(str, obj);
				break;
			case T_PathTarget:
				FUNC133(str, obj);
				break;
			case T_ParamPathInfo:
				FUNC121(str, obj);
				break;
			case T_RestrictInfo:
				FUNC162(str, obj);
				break;
			case T_IndexClause:
				FUNC80(str, obj);
				break;
			case T_PlaceHolderVar:
				FUNC135(str, obj);
				break;
			case T_SpecialJoinInfo:
				FUNC182(str, obj);
				break;
			case T_AppendRelInfo:
				FUNC15(str, obj);
				break;
			case T_PlaceHolderInfo:
				FUNC134(str, obj);
				break;
			case T_MinMaxAggInfo:
				FUNC103(str, obj);
				break;
			case T_PlannerParamItem:
				FUNC142(str, obj);
				break;
			case T_RollupData:
				FUNC164(str, obj);
				break;
			case T_GroupingSetData:
				FUNC74(str, obj);
				break;
			case T_StatisticExtInfo:
				FUNC183(str, obj);
				break;
			case T_ExtensibleNode:
				FUNC54(str, obj);
				break;
			case T_CreateStmt:
				FUNC44(str, obj);
				break;
			case T_CreateForeignTableStmt:
				FUNC42(str, obj);
				break;
			case T_ImportForeignSchemaStmt:
				FUNC79(str, obj);
				break;
			case T_IndexStmt:
				FUNC86(str, obj);
				break;
			case T_CreateStatsStmt:
				FUNC43(str, obj);
				break;
			case T_AlterStatsStmt:
				FUNC11(str, obj);
				break;
			case T_NotifyStmt:
				FUNC115(str, obj);
				break;
			case T_DeclareCursorStmt:
				FUNC49(str, obj);
				break;
			case T_SelectStmt:
				FUNC172(str, obj);
				break;
			case T_ColumnDef:
				FUNC36(str, obj);
				break;
			case T_TypeName:
				FUNC198(str, obj);
				break;
			case T_TypeCast:
				FUNC197(str, obj);
				break;
			case T_CollateClause:
				FUNC34(str, obj);
				break;
			case T_IndexElem:
				FUNC81(str, obj);
				break;
			case T_Query:
				FUNC146(str, obj);
				break;
			case T_WithCheckOption:
				FUNC210(str, obj);
				break;
			case T_SortGroupClause:
				FUNC180(str, obj);
				break;
			case T_GroupingSet:
				FUNC73(str, obj);
				break;
			case T_WindowClause:
				FUNC207(str, obj);
				break;
			case T_RowMarkClause:
				FUNC167(str, obj);
				break;
			case T_WithClause:
				FUNC211(str, obj);
				break;
			case T_CommonTableExpr:
				FUNC38(str, obj);
				break;
			case T_SetOperationStmt:
				FUNC176(str, obj);
				break;
			case T_RangeTblEntry:
				FUNC152(str, obj);
				break;
			case T_RangeTblFunction:
				FUNC153(str, obj);
				break;
			case T_TableSampleClause:
				FUNC192(str, obj);
				break;
			case T_A_Expr:
				FUNC2(str, obj);
				break;
			case T_ColumnRef:
				FUNC37(str, obj);
				break;
			case T_ParamRef:
				FUNC122(str, obj);
				break;
			case T_RawStmt:
				FUNC156(str, obj);
				break;
			case T_A_Const:
				FUNC1(str, obj);
				break;
			case T_A_Star:
				FUNC6(str, obj);
				break;
			case T_A_Indices:
				FUNC4(str, obj);
				break;
			case T_A_Indirection:
				FUNC5(str, obj);
				break;
			case T_A_ArrayExpr:
				FUNC3(str, obj);
				break;
			case T_ResTarget:
				FUNC161(str, obj);
				break;
			case T_MultiAssignRef:
				FUNC108(str, obj);
				break;
			case T_SortBy:
				FUNC179(str, obj);
				break;
			case T_WindowDef:
				FUNC208(str, obj);
				break;
			case T_RangeSubselect:
				FUNC148(str, obj);
				break;
			case T_RangeFunction:
				FUNC147(str, obj);
				break;
			case T_RangeTableSample:
				FUNC151(str, obj);
				break;
			case T_RangeTableFunc:
				FUNC149(str, obj);
				break;
			case T_RangeTableFuncCol:
				FUNC150(str, obj);
				break;
			case T_Constraint:
				FUNC40(str, obj);
				break;
			case T_FuncCall:
				FUNC62(str, obj);
				break;
			case T_DefElem:
				FUNC50(str, obj);
				break;
			case T_TableLikeClause:
				FUNC191(str, obj);
				break;
			case T_LockingClause:
				FUNC96(str, obj);
				break;
			case T_XmlSerialize:
				FUNC214(str, obj);
				break;
			case T_ForeignKeyCacheInfo:
				FUNC57(str, obj);
				break;
			case T_TriggerTransition:
				FUNC196(str, obj);
				break;
			case T_PartitionElem:
				FUNC124(str, obj);
				break;
			case T_PartitionSpec:
				FUNC129(str, obj);
				break;
			case T_PartitionBoundSpec:
				FUNC123(str, obj);
				break;
			case T_PartitionRangeDatum:
				FUNC128(str, obj);
				break;

			default:

				/*
				 * This should be an ERROR, but it's too useful to be able to
				 * dump structures that outNode only understands part of.
				 */
				FUNC218(WARNING, "could not dump unrecognized node type: %d",
					 (int) FUNC219(obj));
				break;
		}
		FUNC215(str, '}');
	}
}