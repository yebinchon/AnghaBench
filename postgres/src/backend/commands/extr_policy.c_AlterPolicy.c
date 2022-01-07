
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int isnull ;
struct TYPE_31__ {int * qual; int * with_check; int policy_name; int table; int * roles; } ;
struct TYPE_30__ {void* oid; } ;
struct TYPE_29__ {int t_self; } ;
struct TYPE_28__ {scalar_t__ objectId; scalar_t__ objectSubId; int classId; } ;
struct TYPE_27__ {int * p_rtable; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseState ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_policy ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_5__ AlterPolicyStmt ;


 char ACL_DELETE_CHR ;
 scalar_t__ ACL_ID_PUBLIC ;
 char ACL_INSERT_CHR ;
 char ACL_SELECT_CHR ;
 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 int AccessExclusiveLock ;
 int AccessShareLock ;
 int Anum_pg_policy_polcmd ;
 int Anum_pg_policy_polname ;
 int Anum_pg_policy_polqual ;
 int Anum_pg_policy_polrelid ;
 int Anum_pg_policy_polroles ;
 int Anum_pg_policy_polwithcheck ;
 int Assert (int) ;
 int AuthIdRelationId ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (int ) ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_3__*) ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_NORMAL ;
 int * DatumGetArrayTypePCopy (int) ;
 char DatumGetChar (int) ;
 scalar_t__ DatumGetObjectId (int) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int EXPR_KIND_POLICY ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 int InvokeObjectPostAlterHook (int ,void*,int ) ;
 int * NIL ;
 int Natts_pg_policy ;
 int NoLock ;
 int OIDOID ;
 int ObjectIdGetDatum (void*) ;
 int PointerGetDatum (int *) ;
 int PolicyPolrelidPolnameIndexId ;
 int PolicyRelationId ;
 int RangeVarCallbackForPolicy ;
 void* RangeVarGetRelidExtended (int ,int ,int ,int ,void*) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int SHARED_DEPENDENCY_POLICY ;
 int ScanKeyInit (int *,int ,int ,int ,int) ;
 char* TextDatumGetCString (int) ;
 int addRTEtoQuery (TYPE_1__*,int *,int,int,int) ;
 int * addRangeTableEntryForRelation (TYPE_1__*,int ,int ,int *,int,int) ;
 int assign_expr_collations (TYPE_1__*,int *) ;
 int * construct_array (int*,int,int ,int,int,char) ;
 int copyObject (int *) ;
 int deleteDependencyRecordsFor (int ,void*,int) ;
 int deleteSharedDependencyRecordsFor (int ,void*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int free_parsestate (TYPE_1__*) ;
 int heap_freetuple (TYPE_3__*) ;
 int heap_getattr (TYPE_3__*,int,int ,int*) ;
 TYPE_3__* heap_modify_tuple (TYPE_3__*,int ,int*,int*,int*) ;
 TYPE_1__* make_parsestate (int *) ;
 int memset (int*,int ,int) ;
 int nodeToString (int *) ;
 scalar_t__ palloc (int) ;
 int* policy_role_list_to_array (int *,int*) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnExpr (TYPE_2__*,int *,int *,int ) ;
 int recordSharedDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (void*,int ) ;
 int * stringToNode (char*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_3__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int * transformWhereClause (TYPE_1__*,int ,int ,char*) ;

ObjectAddress
AlterPolicy(AlterPolicyStmt *stmt)
{
 Relation pg_policy_rel;
 Oid policy_id;
 Relation target_table;
 Oid table_id;
 Datum *role_oids = ((void*)0);
 int nitems = 0;
 ArrayType *role_ids = ((void*)0);
 List *qual_parse_rtable = NIL;
 List *with_check_parse_rtable = NIL;
 Node *qual = ((void*)0);
 Node *with_check_qual = ((void*)0);
 ScanKeyData skey[2];
 SysScanDesc sscan;
 HeapTuple policy_tuple;
 HeapTuple new_tuple;
 Datum values[Natts_pg_policy];
 bool isnull[Natts_pg_policy];
 bool replaces[Natts_pg_policy];
 ObjectAddress target;
 ObjectAddress myself;
 Datum polcmd_datum;
 char polcmd;
 bool polcmd_isnull;
 int i;


 if (stmt->roles != ((void*)0))
 {
  role_oids = policy_role_list_to_array(stmt->roles, &nitems);
  role_ids = construct_array(role_oids, nitems, OIDOID,
           sizeof(Oid), 1, 'i');
 }


 table_id = RangeVarGetRelidExtended(stmt->table, AccessExclusiveLock,
          0,
          RangeVarCallbackForPolicy,
          (void *) stmt);

 target_table = relation_open(table_id, NoLock);


 if (stmt->qual)
 {
  RangeTblEntry *rte;
  ParseState *qual_pstate = make_parsestate(((void*)0));

  rte = addRangeTableEntryForRelation(qual_pstate, target_table,
           AccessShareLock,
           ((void*)0), 0, 0);

  addRTEtoQuery(qual_pstate, rte, 0, 1, 1);

  qual = transformWhereClause(qual_pstate, copyObject(stmt->qual),
         EXPR_KIND_POLICY,
         "POLICY");


  assign_expr_collations(qual_pstate, qual);

  qual_parse_rtable = qual_pstate->p_rtable;
  free_parsestate(qual_pstate);
 }


 if (stmt->with_check)
 {
  RangeTblEntry *rte;
  ParseState *with_check_pstate = make_parsestate(((void*)0));

  rte = addRangeTableEntryForRelation(with_check_pstate, target_table,
           AccessShareLock,
           ((void*)0), 0, 0);

  addRTEtoQuery(with_check_pstate, rte, 0, 1, 1);

  with_check_qual = transformWhereClause(with_check_pstate,
              copyObject(stmt->with_check),
              EXPR_KIND_POLICY,
              "POLICY");


  assign_expr_collations(with_check_pstate, with_check_qual);

  with_check_parse_rtable = with_check_pstate->p_rtable;
  free_parsestate(with_check_pstate);
 }


 memset(values, 0, sizeof(values));
 memset(replaces, 0, sizeof(replaces));
 memset(isnull, 0, sizeof(isnull));


 pg_policy_rel = table_open(PolicyRelationId, RowExclusiveLock);


 ScanKeyInit(&skey[0],
    Anum_pg_policy_polrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(table_id));


 ScanKeyInit(&skey[1],
    Anum_pg_policy_polname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(stmt->policy_name));

 sscan = systable_beginscan(pg_policy_rel,
          PolicyPolrelidPolnameIndexId, 1, ((void*)0), 2,
          skey);

 policy_tuple = systable_getnext(sscan);


 if (!HeapTupleIsValid(policy_tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("policy \"%s\" for table \"%s\" does not exist",
      stmt->policy_name,
      RelationGetRelationName(target_table))));


 polcmd_datum = heap_getattr(policy_tuple, Anum_pg_policy_polcmd,
        RelationGetDescr(pg_policy_rel),
        &polcmd_isnull);
 Assert(!polcmd_isnull);
 polcmd = DatumGetChar(polcmd_datum);




 if ((polcmd == ACL_SELECT_CHR || polcmd == ACL_DELETE_CHR)
  && stmt->with_check != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("only USING expression allowed for SELECT, DELETE")));





 if ((polcmd == ACL_INSERT_CHR)
  && stmt->qual != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("only WITH CHECK expression allowed for INSERT")));

 policy_id = ((Form_pg_policy) GETSTRUCT(policy_tuple))->oid;

 if (role_ids != ((void*)0))
 {
  replaces[Anum_pg_policy_polroles - 1] = 1;
  values[Anum_pg_policy_polroles - 1] = PointerGetDatum(role_ids);
 }
 else
 {
  Oid *roles;
  Datum roles_datum;
  bool attr_isnull;
  ArrayType *policy_roles;







  roles_datum = heap_getattr(policy_tuple, Anum_pg_policy_polroles,
           RelationGetDescr(pg_policy_rel),
           &attr_isnull);
  Assert(!attr_isnull);

  policy_roles = DatumGetArrayTypePCopy(roles_datum);

  roles = (Oid *) ARR_DATA_PTR(policy_roles);

  nitems = ARR_DIMS(policy_roles)[0];

  role_oids = (Datum *) palloc(nitems * sizeof(Datum));

  for (i = 0; i < nitems; i++)
   role_oids[i] = ObjectIdGetDatum(roles[i]);
 }

 if (qual != ((void*)0))
 {
  replaces[Anum_pg_policy_polqual - 1] = 1;
  values[Anum_pg_policy_polqual - 1]
   = CStringGetTextDatum(nodeToString(qual));
 }
 else
 {
  Datum value_datum;
  bool attr_isnull;
  value_datum = heap_getattr(policy_tuple, Anum_pg_policy_polqual,
           RelationGetDescr(pg_policy_rel),
           &attr_isnull);
  if (!attr_isnull)
  {
   char *qual_value;
   ParseState *qual_pstate;


   qual_pstate = make_parsestate(((void*)0));

   qual_value = TextDatumGetCString(value_datum);
   qual = stringToNode(qual_value);


   addRangeTableEntryForRelation(qual_pstate, target_table,
            AccessShareLock,
            ((void*)0), 0, 0);

   qual_parse_rtable = qual_pstate->p_rtable;
   free_parsestate(qual_pstate);
  }
 }

 if (with_check_qual != ((void*)0))
 {
  replaces[Anum_pg_policy_polwithcheck - 1] = 1;
  values[Anum_pg_policy_polwithcheck - 1]
   = CStringGetTextDatum(nodeToString(with_check_qual));
 }
 else
 {
  Datum value_datum;
  bool attr_isnull;
  value_datum = heap_getattr(policy_tuple, Anum_pg_policy_polwithcheck,
           RelationGetDescr(pg_policy_rel),
           &attr_isnull);
  if (!attr_isnull)
  {
   char *with_check_value;
   ParseState *with_check_pstate;


   with_check_pstate = make_parsestate(((void*)0));

   with_check_value = TextDatumGetCString(value_datum);
   with_check_qual = stringToNode(with_check_value);


   addRangeTableEntryForRelation(with_check_pstate, target_table,
            AccessShareLock,
            ((void*)0), 0, 0);

   with_check_parse_rtable = with_check_pstate->p_rtable;
   free_parsestate(with_check_pstate);
  }
 }

 new_tuple = heap_modify_tuple(policy_tuple,
          RelationGetDescr(pg_policy_rel),
          values, isnull, replaces);
 CatalogTupleUpdate(pg_policy_rel, &new_tuple->t_self, new_tuple);


 deleteDependencyRecordsFor(PolicyRelationId, policy_id, 0);


 target.classId = RelationRelationId;
 target.objectId = table_id;
 target.objectSubId = 0;

 myself.classId = PolicyRelationId;
 myself.objectId = policy_id;
 myself.objectSubId = 0;

 recordDependencyOn(&myself, &target, DEPENDENCY_AUTO);

 recordDependencyOnExpr(&myself, qual, qual_parse_rtable, DEPENDENCY_NORMAL);

 recordDependencyOnExpr(&myself, with_check_qual, with_check_parse_rtable,
         DEPENDENCY_NORMAL);


 deleteSharedDependencyRecordsFor(PolicyRelationId, policy_id, 0);
 target.classId = AuthIdRelationId;
 target.objectSubId = 0;
 for (i = 0; i < nitems; i++)
 {
  target.objectId = DatumGetObjectId(role_oids[i]);

  if (target.objectId != ACL_ID_PUBLIC)
   recordSharedDependencyOn(&myself, &target,
          SHARED_DEPENDENCY_POLICY);
 }

 InvokeObjectPostAlterHook(PolicyRelationId, policy_id, 0);

 heap_freetuple(new_tuple);


 CacheInvalidateRelcache(target_table);


 systable_endscan(sscan);
 relation_close(target_table, NoLock);
 table_close(pg_policy_rel, RowExclusiveLock);

 return myself;
}
