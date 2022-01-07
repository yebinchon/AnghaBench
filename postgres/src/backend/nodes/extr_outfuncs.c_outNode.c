
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int BitString ;
 int Float ;
 int IntList ;
 int Integer ;
 scalar_t__ IsA (void const*,int ) ;
 int List ;
 int OidList ;
 int String ;
 int WARNING ;
 int _outAConst (int ,void const*) ;
 int _outAExpr (int ,void const*) ;
 int _outA_ArrayExpr (int ,void const*) ;
 int _outA_Indices (int ,void const*) ;
 int _outA_Indirection (int ,void const*) ;
 int _outA_Star (int ,void const*) ;
 int _outAgg (int ,void const*) ;
 int _outAggPath (int ,void const*) ;
 int _outAggref (int ,void const*) ;
 int _outAlias (int ,void const*) ;
 int _outAlterStatsStmt (int ,void const*) ;
 int _outAlternativeSubPlan (int ,void const*) ;
 int _outAppend (int ,void const*) ;
 int _outAppendPath (int ,void const*) ;
 int _outAppendRelInfo (int ,void const*) ;
 int _outArrayCoerceExpr (int ,void const*) ;
 int _outArrayExpr (int ,void const*) ;
 int _outBitmapAnd (int ,void const*) ;
 int _outBitmapAndPath (int ,void const*) ;
 int _outBitmapHeapPath (int ,void const*) ;
 int _outBitmapHeapScan (int ,void const*) ;
 int _outBitmapIndexScan (int ,void const*) ;
 int _outBitmapOr (int ,void const*) ;
 int _outBitmapOrPath (int ,void const*) ;
 int _outBoolExpr (int ,void const*) ;
 int _outBooleanTest (int ,void const*) ;
 int _outCaseExpr (int ,void const*) ;
 int _outCaseTestExpr (int ,void const*) ;
 int _outCaseWhen (int ,void const*) ;
 int _outCoalesceExpr (int ,void const*) ;
 int _outCoerceToDomain (int ,void const*) ;
 int _outCoerceToDomainValue (int ,void const*) ;
 int _outCoerceViaIO (int ,void const*) ;
 int _outCollateClause (int ,void const*) ;
 int _outCollateExpr (int ,void const*) ;
 int _outColumnDef (int ,void const*) ;
 int _outColumnRef (int ,void const*) ;
 int _outCommonTableExpr (int ,void const*) ;
 int _outConst (int ,void const*) ;
 int _outConstraint (int ,void const*) ;
 int _outConvertRowtypeExpr (int ,void const*) ;
 int _outCreateForeignTableStmt (int ,void const*) ;
 int _outCreateStatsStmt (int ,void const*) ;
 int _outCreateStmt (int ,void const*) ;
 int _outCteScan (int ,void const*) ;
 int _outCurrentOfExpr (int ,void const*) ;
 int _outCustomPath (int ,void const*) ;
 int _outCustomScan (int ,void const*) ;
 int _outDeclareCursorStmt (int ,void const*) ;
 int _outDefElem (int ,void const*) ;
 int _outDistinctExpr (int ,void const*) ;
 int _outEquivalenceClass (int ,void const*) ;
 int _outEquivalenceMember (int ,void const*) ;
 int _outExtensibleNode (int ,void const*) ;
 int _outFieldSelect (int ,void const*) ;
 int _outFieldStore (int ,void const*) ;
 int _outForeignKeyCacheInfo (int ,void const*) ;
 int _outForeignKeyOptInfo (int ,void const*) ;
 int _outForeignPath (int ,void const*) ;
 int _outForeignScan (int ,void const*) ;
 int _outFromExpr (int ,void const*) ;
 int _outFuncCall (int ,void const*) ;
 int _outFuncExpr (int ,void const*) ;
 int _outFunctionScan (int ,void const*) ;
 int _outGather (int ,void const*) ;
 int _outGatherMerge (int ,void const*) ;
 int _outGatherMergePath (int ,void const*) ;
 int _outGatherPath (int ,void const*) ;
 int _outGroup (int ,void const*) ;
 int _outGroupPath (int ,void const*) ;
 int _outGroupResultPath (int ,void const*) ;
 int _outGroupingFunc (int ,void const*) ;
 int _outGroupingSet (int ,void const*) ;
 int _outGroupingSetData (int ,void const*) ;
 int _outGroupingSetsPath (int ,void const*) ;
 int _outHash (int ,void const*) ;
 int _outHashJoin (int ,void const*) ;
 int _outHashPath (int ,void const*) ;
 int _outImportForeignSchemaStmt (int ,void const*) ;
 int _outIndexClause (int ,void const*) ;
 int _outIndexElem (int ,void const*) ;
 int _outIndexOnlyScan (int ,void const*) ;
 int _outIndexOptInfo (int ,void const*) ;
 int _outIndexPath (int ,void const*) ;
 int _outIndexScan (int ,void const*) ;
 int _outIndexStmt (int ,void const*) ;
 int _outInferenceElem (int ,void const*) ;
 int _outIntoClause (int ,void const*) ;
 int _outJoin (int ,void const*) ;
 int _outJoinExpr (int ,void const*) ;
 int _outLimit (int ,void const*) ;
 int _outLimitPath (int ,void const*) ;
 int _outList (int ,void const*) ;
 int _outLockRows (int ,void const*) ;
 int _outLockRowsPath (int ,void const*) ;
 int _outLockingClause (int ,void const*) ;
 int _outMaterial (int ,void const*) ;
 int _outMaterialPath (int ,void const*) ;
 int _outMergeAppend (int ,void const*) ;
 int _outMergeAppendPath (int ,void const*) ;
 int _outMergeJoin (int ,void const*) ;
 int _outMergePath (int ,void const*) ;
 int _outMinMaxAggInfo (int ,void const*) ;
 int _outMinMaxAggPath (int ,void const*) ;
 int _outMinMaxExpr (int ,void const*) ;
 int _outModifyTable (int ,void const*) ;
 int _outModifyTablePath (int ,void const*) ;
 int _outMultiAssignRef (int ,void const*) ;
 int _outNamedArgExpr (int ,void const*) ;
 int _outNamedTuplestoreScan (int ,void const*) ;
 int _outNestLoop (int ,void const*) ;
 int _outNestLoopParam (int ,void const*) ;
 int _outNestPath (int ,void const*) ;
 int _outNextValueExpr (int ,void const*) ;
 int _outNotifyStmt (int ,void const*) ;
 int _outNullIfExpr (int ,void const*) ;
 int _outNullTest (int ,void const*) ;
 int _outOnConflictExpr (int ,void const*) ;
 int _outOpExpr (int ,void const*) ;
 int _outParam (int ,void const*) ;
 int _outParamPathInfo (int ,void const*) ;
 int _outParamRef (int ,void const*) ;
 int _outPartitionBoundSpec (int ,void const*) ;
 int _outPartitionElem (int ,void const*) ;
 int _outPartitionPruneInfo (int ,void const*) ;
 int _outPartitionPruneStepCombine (int ,void const*) ;
 int _outPartitionPruneStepOp (int ,void const*) ;
 int _outPartitionRangeDatum (int ,void const*) ;
 int _outPartitionSpec (int ,void const*) ;
 int _outPartitionedRelPruneInfo (int ,void const*) ;
 int _outPath (int ,void const*) ;
 int _outPathKey (int ,void const*) ;
 int _outPathTarget (int ,void const*) ;
 int _outPlaceHolderInfo (int ,void const*) ;
 int _outPlaceHolderVar (int ,void const*) ;
 int _outPlan (int ,void const*) ;
 int _outPlanInvalItem (int ,void const*) ;
 int _outPlanRowMark (int ,void const*) ;
 int _outPlannedStmt (int ,void const*) ;
 int _outPlannerGlobal (int ,void const*) ;
 int _outPlannerInfo (int ,void const*) ;
 int _outPlannerParamItem (int ,void const*) ;
 int _outProjectSet (int ,void const*) ;
 int _outProjectSetPath (int ,void const*) ;
 int _outProjectionPath (int ,void const*) ;
 int _outQuery (int ,void const*) ;
 int _outRangeFunction (int ,void const*) ;
 int _outRangeSubselect (int ,void const*) ;
 int _outRangeTableFunc (int ,void const*) ;
 int _outRangeTableFuncCol (int ,void const*) ;
 int _outRangeTableSample (int ,void const*) ;
 int _outRangeTblEntry (int ,void const*) ;
 int _outRangeTblFunction (int ,void const*) ;
 int _outRangeTblRef (int ,void const*) ;
 int _outRangeVar (int ,void const*) ;
 int _outRawStmt (int ,void const*) ;
 int _outRecursiveUnion (int ,void const*) ;
 int _outRecursiveUnionPath (int ,void const*) ;
 int _outRelOptInfo (int ,void const*) ;
 int _outRelabelType (int ,void const*) ;
 int _outResTarget (int ,void const*) ;
 int _outRestrictInfo (int ,void const*) ;
 int _outResult (int ,void const*) ;
 int _outRollupData (int ,void const*) ;
 int _outRowCompareExpr (int ,void const*) ;
 int _outRowExpr (int ,void const*) ;
 int _outRowMarkClause (int ,void const*) ;
 int _outSQLValueFunction (int ,void const*) ;
 int _outSampleScan (int ,void const*) ;
 int _outScalarArrayOpExpr (int ,void const*) ;
 int _outScan (int ,void const*) ;
 int _outSelectStmt (int ,void const*) ;
 int _outSeqScan (int ,void const*) ;
 int _outSetOp (int ,void const*) ;
 int _outSetOpPath (int ,void const*) ;
 int _outSetOperationStmt (int ,void const*) ;
 int _outSetToDefault (int ,void const*) ;
 int _outSort (int ,void const*) ;
 int _outSortBy (int ,void const*) ;
 int _outSortGroupClause (int ,void const*) ;
 int _outSortPath (int ,void const*) ;
 int _outSpecialJoinInfo (int ,void const*) ;
 int _outStatisticExtInfo (int ,void const*) ;
 int _outSubLink (int ,void const*) ;
 int _outSubPlan (int ,void const*) ;
 int _outSubqueryScan (int ,void const*) ;
 int _outSubqueryScanPath (int ,void const*) ;
 int _outSubscriptingRef (int ,void const*) ;
 int _outTableFunc (int ,void const*) ;
 int _outTableFuncScan (int ,void const*) ;
 int _outTableLikeClause (int ,void const*) ;
 int _outTableSampleClause (int ,void const*) ;
 int _outTargetEntry (int ,void const*) ;
 int _outTidPath (int ,void const*) ;
 int _outTidScan (int ,void const*) ;
 int _outTriggerTransition (int ,void const*) ;
 int _outTypeCast (int ,void const*) ;
 int _outTypeName (int ,void const*) ;
 int _outUnique (int ,void const*) ;
 int _outUniquePath (int ,void const*) ;
 int _outUpperUniquePath (int ,void const*) ;
 int _outValue (int ,void const*) ;
 int _outValuesScan (int ,void const*) ;
 int _outVar (int ,void const*) ;
 int _outWindowAgg (int ,void const*) ;
 int _outWindowAggPath (int ,void const*) ;
 int _outWindowClause (int ,void const*) ;
 int _outWindowDef (int ,void const*) ;
 int _outWindowFunc (int ,void const*) ;
 int _outWithCheckOption (int ,void const*) ;
 int _outWithClause (int ,void const*) ;
 int _outWorkTableScan (int ,void const*) ;
 int _outXmlExpr (int ,void const*) ;
 int _outXmlSerialize (int ,void const*) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int nodeTag (void const*) ;

void
outNode(StringInfo str, const void *obj)
{

 check_stack_depth();

 if (obj == ((void*)0))
  appendStringInfoString(str, "<>");
 else if (IsA(obj, List) ||IsA(obj, IntList) || IsA(obj, OidList))
  _outList(str, obj);
 else if (IsA(obj, Integer) ||
    IsA(obj, Float) ||
    IsA(obj, String) ||
    IsA(obj, BitString))
 {

  _outValue(str, obj);
 }
 else
 {
  appendStringInfoChar(str, '{');
  switch (nodeTag(obj))
  {
   case 202:
    _outPlannedStmt(str, obj);
    break;
   case 205:
    _outPlan(str, obj);
    break;
   case 178:
    _outResult(str, obj);
    break;
   case 198:
    _outProjectSet(str, obj);
    break;
   case 235:
    _outModifyTable(str, obj);
    break;
   case 327:
    _outAppend(str, obj);
    break;
   case 242:
    _outMergeAppend(str, obj);
    break;
   case 184:
    _outRecursiveUnion(str, obj);
    break;
   case 322:
    _outBitmapAnd(str, obj);
    break;
   case 317:
    _outBitmapOr(str, obj);
    break;
   case 275:
    _outGather(str, obj);
    break;
   case 274:
    _outGatherMerge(str, obj);
    break;
   case 170:
    _outScan(str, obj);
    break;
   case 168:
    _outSeqScan(str, obj);
    break;
   case 172:
    _outSampleScan(str, obj);
    break;
   case 255:
    _outIndexScan(str, obj);
    break;
   case 258:
    _outIndexOnlyScan(str, obj);
    break;
   case 318:
    _outBitmapIndexScan(str, obj);
    break;
   case 319:
    _outBitmapHeapScan(str, obj);
    break;
   case 146:
    _outTidScan(str, obj);
    break;
   case 155:
    _outSubqueryScan(str, obj);
    break;
   case 276:
    _outFunctionScan(str, obj);
    break;
   case 151:
    _outTableFuncScan(str, obj);
    break;
   case 139:
    _outValuesScan(str, obj);
    break;
   case 295:
    _outCteScan(str, obj);
    break;
   case 231:
    _outNamedTuplestoreScan(str, obj);
    break;
   case 130:
    _outWorkTableScan(str, obj);
    break;
   case 280:
    _outForeignScan(str, obj);
    break;
   case 292:
    _outCustomScan(str, obj);
    break;
   case 251:
    _outJoin(str, obj);
    break;
   case 230:
    _outNestLoop(str, obj);
    break;
   case 240:
    _outMergeJoin(str, obj);
    break;
   case 263:
    _outHashJoin(str, obj);
    break;
   case 333:
    _outAgg(str, obj);
    break;
   case 137:
    _outWindowAgg(str, obj);
    break;
   case 271:
    _outGroup(str, obj);
    break;
   case 244:
    _outMaterial(str, obj);
    break;
   case 163:
    _outSort(str, obj);
    break;
   case 142:
    _outUnique(str, obj);
    break;
   case 264:
    _outHash(str, obj);
    break;
   case 167:
    _outSetOp(str, obj);
    break;
   case 247:
    _outLockRows(str, obj);
    break;
   case 249:
    _outLimit(str, obj);
    break;
   case 229:
    _outNestLoopParam(str, obj);
    break;
   case 203:
    _outPlanRowMark(str, obj);
    break;
   case 216:
    _outPartitionPruneInfo(str, obj);
    break;
   case 211:
    _outPartitionedRelPruneInfo(str, obj);
    break;
   case 214:
    _outPartitionPruneStepOp(str, obj);
    break;
   case 215:
    _outPartitionPruneStepCombine(str, obj);
    break;
   case 204:
    _outPlanInvalItem(str, obj);
    break;
   case 330:
    _outAlias(str, obj);
    break;
   case 186:
    _outRangeVar(str, obj);
    break;
   case 152:
    _outTableFunc(str, obj);
    break;
   case 252:
    _outIntoClause(str, obj);
    break;
   case 138:
    _outVar(str, obj);
    break;
   case 301:
    _outConst(str, obj);
    break;
   case 221:
    _outParam(str, obj);
    break;
   case 331:
    _outAggref(str, obj);
    break;
   case 268:
    _outGroupingFunc(str, obj);
    break;
   case 133:
    _outWindowFunc(str, obj);
    break;
   case 153:
    _outSubscriptingRef(str, obj);
    break;
   case 277:
    _outFuncExpr(str, obj);
    break;
   case 232:
    _outNamedArgExpr(str, obj);
    break;
   case 222:
    _outOpExpr(str, obj);
    break;
   case 289:
    _outDistinctExpr(str, obj);
    break;
   case 225:
    _outNullIfExpr(str, obj);
    break;
   case 171:
    _outScalarArrayOpExpr(str, obj);
    break;
   case 315:
    _outBoolExpr(str, obj);
    break;
   case 157:
    _outSubLink(str, obj);
    break;
   case 156:
    _outSubPlan(str, obj);
    break;
   case 328:
    _outAlternativeSubPlan(str, obj);
    break;
   case 285:
    _outFieldSelect(str, obj);
    break;
   case 284:
    _outFieldStore(str, obj);
    break;
   case 181:
    _outRelabelType(str, obj);
    break;
   case 307:
    _outCoerceViaIO(str, obj);
    break;
   case 324:
    _outArrayCoerceExpr(str, obj);
    break;
   case 299:
    _outConvertRowtypeExpr(str, obj);
    break;
   case 305:
    _outCollateExpr(str, obj);
    break;
   case 313:
    _outCaseExpr(str, obj);
    break;
   case 311:
    _outCaseWhen(str, obj);
    break;
   case 312:
    _outCaseTestExpr(str, obj);
    break;
   case 323:
    _outArrayExpr(str, obj);
    break;
   case 175:
    _outRowExpr(str, obj);
    break;
   case 176:
    _outRowCompareExpr(str, obj);
    break;
   case 310:
    _outCoalesceExpr(str, obj);
    break;
   case 236:
    _outMinMaxExpr(str, obj);
    break;
   case 173:
    _outSQLValueFunction(str, obj);
    break;
   case 129:
    _outXmlExpr(str, obj);
    break;
   case 224:
    _outNullTest(str, obj);
    break;
   case 314:
    _outBooleanTest(str, obj);
    break;
   case 309:
    _outCoerceToDomain(str, obj);
    break;
   case 308:
    _outCoerceToDomainValue(str, obj);
    break;
   case 164:
    _outSetToDefault(str, obj);
    break;
   case 294:
    _outCurrentOfExpr(str, obj);
    break;
   case 227:
    _outNextValueExpr(str, obj);
    break;
   case 253:
    _outInferenceElem(str, obj);
    break;
   case 148:
    _outTargetEntry(str, obj);
    break;
   case 187:
    _outRangeTblRef(str, obj);
    break;
   case 250:
    _outJoinExpr(str, obj);
    break;
   case 279:
    _outFromExpr(str, obj);
    break;
   case 223:
    _outOnConflictExpr(str, obj);
    break;
   case 210:
    _outPath(str, obj);
    break;
   case 256:
    _outIndexPath(str, obj);
    break;
   case 320:
    _outBitmapHeapPath(str, obj);
    break;
   case 321:
    _outBitmapAndPath(str, obj);
    break;
   case 316:
    _outBitmapOrPath(str, obj);
    break;
   case 147:
    _outTidPath(str, obj);
    break;
   case 154:
    _outSubqueryScanPath(str, obj);
    break;
   case 281:
    _outForeignPath(str, obj);
    break;
   case 293:
    _outCustomPath(str, obj);
    break;
   case 326:
    _outAppendPath(str, obj);
    break;
   case 241:
    _outMergeAppendPath(str, obj);
    break;
   case 269:
    _outGroupResultPath(str, obj);
    break;
   case 243:
    _outMaterialPath(str, obj);
    break;
   case 141:
    _outUniquePath(str, obj);
    break;
   case 272:
    _outGatherPath(str, obj);
    break;
   case 196:
    _outProjectionPath(str, obj);
    break;
   case 197:
    _outProjectSetPath(str, obj);
    break;
   case 160:
    _outSortPath(str, obj);
    break;
   case 270:
    _outGroupPath(str, obj);
    break;
   case 140:
    _outUpperUniquePath(str, obj);
    break;
   case 332:
    _outAggPath(str, obj);
    break;
   case 265:
    _outGroupingSetsPath(str, obj);
    break;
   case 237:
    _outMinMaxAggPath(str, obj);
    break;
   case 136:
    _outWindowAggPath(str, obj);
    break;
   case 166:
    _outSetOpPath(str, obj);
    break;
   case 183:
    _outRecursiveUnionPath(str, obj);
    break;
   case 246:
    _outLockRowsPath(str, obj);
    break;
   case 234:
    _outModifyTablePath(str, obj);
    break;
   case 248:
    _outLimitPath(str, obj);
    break;
   case 273:
    _outGatherMergePath(str, obj);
    break;
   case 228:
    _outNestPath(str, obj);
    break;
   case 239:
    _outMergePath(str, obj);
    break;
   case 262:
    _outHashPath(str, obj);
    break;
   case 201:
    _outPlannerGlobal(str, obj);
    break;
   case 200:
    _outPlannerInfo(str, obj);
    break;
   case 182:
    _outRelOptInfo(str, obj);
    break;
   case 257:
    _outIndexOptInfo(str, obj);
    break;
   case 282:
    _outForeignKeyOptInfo(str, obj);
    break;
   case 288:
    _outEquivalenceClass(str, obj);
    break;
   case 287:
    _outEquivalenceMember(str, obj);
    break;
   case 209:
    _outPathKey(str, obj);
    break;
   case 208:
    _outPathTarget(str, obj);
    break;
   case 220:
    _outParamPathInfo(str, obj);
    break;
   case 179:
    _outRestrictInfo(str, obj);
    break;
   case 260:
    _outIndexClause(str, obj);
    break;
   case 206:
    _outPlaceHolderVar(str, obj);
    break;
   case 159:
    _outSpecialJoinInfo(str, obj);
    break;
   case 325:
    _outAppendRelInfo(str, obj);
    break;
   case 207:
    _outPlaceHolderInfo(str, obj);
    break;
   case 238:
    _outMinMaxAggInfo(str, obj);
    break;
   case 199:
    _outPlannerParamItem(str, obj);
    break;
   case 177:
    _outRollupData(str, obj);
    break;
   case 266:
    _outGroupingSetData(str, obj);
    break;
   case 158:
    _outStatisticExtInfo(str, obj);
    break;
   case 286:
    _outExtensibleNode(str, obj);
    break;
   case 296:
    _outCreateStmt(str, obj);
    break;
   case 298:
    _outCreateForeignTableStmt(str, obj);
    break;
   case 261:
    _outImportForeignSchemaStmt(str, obj);
    break;
   case 254:
    _outIndexStmt(str, obj);
    break;
   case 297:
    _outCreateStatsStmt(str, obj);
    break;
   case 329:
    _outAlterStatsStmt(str, obj);
    break;
   case 226:
    _outNotifyStmt(str, obj);
    break;
   case 291:
    _outDeclareCursorStmt(str, obj);
    break;
   case 169:
    _outSelectStmt(str, obj);
    break;
   case 304:
    _outColumnDef(str, obj);
    break;
   case 143:
    _outTypeName(str, obj);
    break;
   case 144:
    _outTypeCast(str, obj);
    break;
   case 306:
    _outCollateClause(str, obj);
    break;
   case 259:
    _outIndexElem(str, obj);
    break;
   case 195:
    _outQuery(str, obj);
    break;
   case 132:
    _outWithCheckOption(str, obj);
    break;
   case 161:
    _outSortGroupClause(str, obj);
    break;
   case 267:
    _outGroupingSet(str, obj);
    break;
   case 135:
    _outWindowClause(str, obj);
    break;
   case 174:
    _outRowMarkClause(str, obj);
    break;
   case 131:
    _outWithClause(str, obj);
    break;
   case 302:
    _outCommonTableExpr(str, obj);
    break;
   case 165:
    _outSetOperationStmt(str, obj);
    break;
   case 189:
    _outRangeTblEntry(str, obj);
    break;
   case 188:
    _outRangeTblFunction(str, obj);
    break;
   case 149:
    _outTableSampleClause(str, obj);
    break;
   case 337:
    _outAExpr(str, obj);
    break;
   case 303:
    _outColumnRef(str, obj);
    break;
   case 219:
    _outParamRef(str, obj);
    break;
   case 185:
    _outRawStmt(str, obj);
    break;
   case 338:
    _outAConst(str, obj);
    break;
   case 334:
    _outA_Star(str, obj);
    break;
   case 336:
    _outA_Indices(str, obj);
    break;
   case 335:
    _outA_Indirection(str, obj);
    break;
   case 339:
    _outA_ArrayExpr(str, obj);
    break;
   case 180:
    _outResTarget(str, obj);
    break;
   case 233:
    _outMultiAssignRef(str, obj);
    break;
   case 162:
    _outSortBy(str, obj);
    break;
   case 134:
    _outWindowDef(str, obj);
    break;
   case 193:
    _outRangeSubselect(str, obj);
    break;
   case 194:
    _outRangeFunction(str, obj);
    break;
   case 190:
    _outRangeTableSample(str, obj);
    break;
   case 192:
    _outRangeTableFunc(str, obj);
    break;
   case 191:
    _outRangeTableFuncCol(str, obj);
    break;
   case 300:
    _outConstraint(str, obj);
    break;
   case 278:
    _outFuncCall(str, obj);
    break;
   case 290:
    _outDefElem(str, obj);
    break;
   case 150:
    _outTableLikeClause(str, obj);
    break;
   case 245:
    _outLockingClause(str, obj);
    break;
   case 128:
    _outXmlSerialize(str, obj);
    break;
   case 283:
    _outForeignKeyCacheInfo(str, obj);
    break;
   case 145:
    _outTriggerTransition(str, obj);
    break;
   case 217:
    _outPartitionElem(str, obj);
    break;
   case 212:
    _outPartitionSpec(str, obj);
    break;
   case 218:
    _outPartitionBoundSpec(str, obj);
    break;
   case 213:
    _outPartitionRangeDatum(str, obj);
    break;

   default:





    elog(WARNING, "could not dump unrecognized node type: %d",
      (int) nodeTag(obj));
    break;
  }
  appendStringInfoChar(str, '}');
 }
}
