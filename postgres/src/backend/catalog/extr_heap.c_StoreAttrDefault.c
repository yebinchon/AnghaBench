
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int valuesAtt ;
typedef int replacesAtt ;
typedef int nullsAtt ;
struct TYPE_29__ {char attgenerated; int attalign; int attbyval; int attlen; int atttypid; int atthasdef; } ;
struct TYPE_28__ {int t_self; } ;
struct TYPE_27__ {void* objectSubId; void* objectId; int classId; } ;
struct TYPE_26__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int Node ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int ExprState ;
typedef int ExprContext ;
typedef int Expr ;
typedef int EState ;
typedef int Datum ;
typedef void* AttrNumber ;


 int ATTNUM ;
 int Anum_pg_attrdef_adbin ;
 int Anum_pg_attrdef_adnum ;
 int Anum_pg_attrdef_adrelid ;
 int Anum_pg_attrdef_oid ;
 int Anum_pg_attribute_atthasdef ;
 int Anum_pg_attribute_atthasmissing ;
 int Anum_pg_attribute_attmissingval ;
 int AttrDefaultOidIndexId ;
 int AttrDefaultRelationId ;
 int AttributeRelationId ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (TYPE_1__*,TYPE_3__*) ;
 int CatalogTupleUpdate (TYPE_1__*,int *,TYPE_3__*) ;
 int * CreateExecutorState () ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_NORMAL ;
 char* DatumGetPointer (int) ;
 int ERROR ;
 int ExecEvalExpr (int *,int *,int*) ;
 int * ExecPrepareExpr (int *,int *) ;
 int FreeExecutorState (int *) ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 void* GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 int * GetPerTupleExprContext (int *) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 int Int16GetDatum (void*) ;
 int InvokeObjectPostCreateHookArg (int ,void*,void*,int) ;
 int MemSet (int*,int,int) ;
 int Natts_pg_attribute ;
 int ObjectIdGetDatum (void*) ;
 int PointerGetDatum (int ) ;
 int RelationGetDescr (TYPE_1__*) ;
 void* RelationGetRelid (TYPE_1__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCacheCopy2 (int ,int,int ) ;
 TYPE_4__* TupleDescAttr (int ,void*) ;
 int construct_array (int*,int,int ,int ,int ,int ) ;
 int elog (int ,char*,void*,void*) ;
 int * expression_planner (int *) ;
 TYPE_3__* heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (TYPE_3__*) ;
 TYPE_3__* heap_modify_tuple (TYPE_3__*,int ,int*,int*,int*) ;
 char* nodeToString (int *) ;
 int pfree (char*) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnSingleRelExpr (TYPE_2__*,int *,void*,int ,int ,int) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

Oid
StoreAttrDefault(Relation rel, AttrNumber attnum,
     Node *expr, bool is_internal, bool add_column_mode)
{
 char *adbin;
 Relation adrel;
 HeapTuple tuple;
 Datum values[4];
 static bool nulls[4] = {0, 0, 0, 0};
 Relation attrrel;
 HeapTuple atttup;
 Form_pg_attribute attStruct;
 char attgenerated;
 Oid attrdefOid;
 ObjectAddress colobject,
    defobject;

 adrel = table_open(AttrDefaultRelationId, RowExclusiveLock);




 adbin = nodeToString(expr);




 attrdefOid = GetNewOidWithIndex(adrel, AttrDefaultOidIndexId,
         Anum_pg_attrdef_oid);
 values[Anum_pg_attrdef_oid - 1] = ObjectIdGetDatum(attrdefOid);
 values[Anum_pg_attrdef_adrelid - 1] = RelationGetRelid(rel);
 values[Anum_pg_attrdef_adnum - 1] = attnum;
 values[Anum_pg_attrdef_adbin - 1] = CStringGetTextDatum(adbin);

 tuple = heap_form_tuple(adrel->rd_att, values, nulls);
 CatalogTupleInsert(adrel, tuple);

 defobject.classId = AttrDefaultRelationId;
 defobject.objectId = attrdefOid;
 defobject.objectSubId = 0;

 table_close(adrel, RowExclusiveLock);


 pfree(DatumGetPointer(values[Anum_pg_attrdef_adbin - 1]));
 heap_freetuple(tuple);
 pfree(adbin);





 attrrel = table_open(AttributeRelationId, RowExclusiveLock);
 atttup = SearchSysCacheCopy2(ATTNUM,
         ObjectIdGetDatum(RelationGetRelid(rel)),
         Int16GetDatum(attnum));
 if (!HeapTupleIsValid(atttup))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, RelationGetRelid(rel));
 attStruct = (Form_pg_attribute) GETSTRUCT(atttup);
 attgenerated = attStruct->attgenerated;
 if (!attStruct->atthasdef)
 {
  Form_pg_attribute defAttStruct;

  ExprState *exprState;
  Expr *expr2 = (Expr *) expr;
  EState *estate = ((void*)0);
  ExprContext *econtext;
  Datum valuesAtt[Natts_pg_attribute];
  bool nullsAtt[Natts_pg_attribute];
  bool replacesAtt[Natts_pg_attribute];
  Datum missingval = (Datum) 0;
  bool missingIsNull = 1;

  MemSet(valuesAtt, 0, sizeof(valuesAtt));
  MemSet(nullsAtt, 0, sizeof(nullsAtt));
  MemSet(replacesAtt, 0, sizeof(replacesAtt));
  valuesAtt[Anum_pg_attribute_atthasdef - 1] = 1;
  replacesAtt[Anum_pg_attribute_atthasdef - 1] = 1;

  if (add_column_mode && !attgenerated)
  {
   expr2 = expression_planner(expr2);
   estate = CreateExecutorState();
   exprState = ExecPrepareExpr(expr2, estate);
   econtext = GetPerTupleExprContext(estate);

   missingval = ExecEvalExpr(exprState, econtext,
           &missingIsNull);

   FreeExecutorState(estate);

   defAttStruct = TupleDescAttr(rel->rd_att, attnum - 1);

   if (missingIsNull)
   {

    missingval = (Datum) 0;
   }
   else
   {

    missingval = PointerGetDatum(
            construct_array(&missingval,
                1,
                defAttStruct->atttypid,
                defAttStruct->attlen,
                defAttStruct->attbyval,
                defAttStruct->attalign));
   }

   valuesAtt[Anum_pg_attribute_atthasmissing - 1] = !missingIsNull;
   replacesAtt[Anum_pg_attribute_atthasmissing - 1] = 1;
   valuesAtt[Anum_pg_attribute_attmissingval - 1] = missingval;
   replacesAtt[Anum_pg_attribute_attmissingval - 1] = 1;
   nullsAtt[Anum_pg_attribute_attmissingval - 1] = missingIsNull;
  }
  atttup = heap_modify_tuple(atttup, RelationGetDescr(attrrel),
           valuesAtt, nullsAtt, replacesAtt);

  CatalogTupleUpdate(attrrel, &atttup->t_self, atttup);

  if (!missingIsNull)
   pfree(DatumGetPointer(missingval));

 }
 table_close(attrrel, RowExclusiveLock);
 heap_freetuple(atttup);





 colobject.classId = RelationRelationId;
 colobject.objectId = RelationGetRelid(rel);
 colobject.objectSubId = attnum;

 recordDependencyOn(&defobject, &colobject, DEPENDENCY_AUTO);




 if (attgenerated)
 {




  recordDependencyOnSingleRelExpr(&colobject, expr, RelationGetRelid(rel),
          DEPENDENCY_AUTO,
          DEPENDENCY_AUTO, 0);
 }
 else
 {




  recordDependencyOnSingleRelExpr(&defobject, expr, RelationGetRelid(rel),
          DEPENDENCY_NORMAL,
          DEPENDENCY_NORMAL, 0);
 }
 InvokeObjectPostCreateHookArg(AttrDefaultRelationId,
          RelationGetRelid(rel), attnum, is_internal);

 return attrdefOid;
}
