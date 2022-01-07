
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef int NameData ;
typedef int List ;
typedef TYPE_1__* HeapTuple ;
typedef scalar_t__ Datum ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_operator_oid ;
 int Anum_pg_operator_oprcanhash ;
 int Anum_pg_operator_oprcanmerge ;
 int Anum_pg_operator_oprcode ;
 int Anum_pg_operator_oprcom ;
 int Anum_pg_operator_oprjoin ;
 int Anum_pg_operator_oprkind ;
 int Anum_pg_operator_oprleft ;
 int Anum_pg_operator_oprname ;
 int Anum_pg_operator_oprnamespace ;
 int Anum_pg_operator_oprnegate ;
 int Anum_pg_operator_oprowner ;
 int Anum_pg_operator_oprrest ;
 int Anum_pg_operator_oprresult ;
 int Anum_pg_operator_oprright ;
 scalar_t__ BOOLOID ;
 scalar_t__ BoolGetDatum (int) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 scalar_t__ CharGetDatum (char) ;
 int ERRCODE_DUPLICATE_FUNCTION ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 scalar_t__ GetNewOidWithIndex (int ,int ,int) ;
 scalar_t__ GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostCreateHook (int ,scalar_t__,int ) ;
 scalar_t__ NameGetDatum (int *) ;
 char const* NameListToString (int *) ;
 int Natts_pg_operator ;
 int OBJECT_OPERATOR ;
 int OPEROID ;
 scalar_t__ ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ OperatorGet (char const*,scalar_t__,scalar_t__,scalar_t__,int*) ;
 int OperatorOidIndexId ;
 int OperatorRelationId ;
 int OperatorUpd (scalar_t__,scalar_t__,scalar_t__,int) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,scalar_t__) ;
 int aclcheck_error (int ,int ,char const*) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_func_rettype (scalar_t__) ;
 scalar_t__ get_other_operator (int *,scalar_t__,scalar_t__,char const*,scalar_t__,scalar_t__,scalar_t__,int) ;
 TYPE_1__* heap_form_tuple (int ,scalar_t__*,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,scalar_t__*,int*,int*) ;
 int makeOperatorDependencies (TYPE_1__*,int) ;
 int namestrcpy (int *,char const*) ;
 int pg_oper_ownercheck (scalar_t__,scalar_t__) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int validOperatorName (char const*) ;

ObjectAddress
OperatorCreate(const char *operatorName,
      Oid operatorNamespace,
      Oid leftTypeId,
      Oid rightTypeId,
      Oid procedureId,
      List *commutatorName,
      List *negatorName,
      Oid restrictionId,
      Oid joinId,
      bool canMerge,
      bool canHash)
{
 Relation pg_operator_desc;
 HeapTuple tup;
 bool isUpdate;
 bool nulls[Natts_pg_operator];
 bool replaces[Natts_pg_operator];
 Datum values[Natts_pg_operator];
 Oid operatorObjectId;
 bool operatorAlreadyDefined;
 Oid operResultType;
 Oid commutatorId,
    negatorId;
 bool selfCommutator = 0;
 NameData oname;
 int i;
 ObjectAddress address;




 if (!validOperatorName(operatorName))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("\"%s\" is not a valid operator name",
      operatorName)));

 if (!(OidIsValid(leftTypeId) && OidIsValid(rightTypeId)))
 {

  if (commutatorName)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only binary operators can have commutators")));
  if (OidIsValid(joinId))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only binary operators can have join selectivity")));
  if (canMerge)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only binary operators can merge join")));
  if (canHash)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only binary operators can hash")));
 }

 operResultType = get_func_rettype(procedureId);

 if (operResultType != BOOLOID)
 {

  if (negatorName)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only boolean operators can have negators")));
  if (OidIsValid(restrictionId))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only boolean operators can have restriction selectivity")));
  if (OidIsValid(joinId))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only boolean operators can have join selectivity")));
  if (canMerge)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only boolean operators can merge join")));
  if (canHash)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only boolean operators can hash")));
 }

 operatorObjectId = OperatorGet(operatorName,
           operatorNamespace,
           leftTypeId,
           rightTypeId,
           &operatorAlreadyDefined);

 if (operatorAlreadyDefined)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_FUNCTION),
     errmsg("operator %s already exists",
      operatorName)));






 if (OidIsValid(operatorObjectId) &&
  !pg_oper_ownercheck(operatorObjectId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
        operatorName);






 if (commutatorName)
 {

  commutatorId = get_other_operator(commutatorName,
            rightTypeId, leftTypeId,
            operatorName, operatorNamespace,
            leftTypeId, rightTypeId,
            1);


  if (OidIsValid(commutatorId) &&
   !pg_oper_ownercheck(commutatorId, GetUserId()))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
         NameListToString(commutatorName));





  if (!OidIsValid(commutatorId))
   selfCommutator = 1;
 }
 else
  commutatorId = InvalidOid;

 if (negatorName)
 {

  negatorId = get_other_operator(negatorName,
            leftTypeId, rightTypeId,
            operatorName, operatorNamespace,
            leftTypeId, rightTypeId,
            0);


  if (OidIsValid(negatorId) &&
   !pg_oper_ownercheck(negatorId, GetUserId()))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
         NameListToString(negatorName));
 }
 else
  negatorId = InvalidOid;





 for (i = 0; i < Natts_pg_operator; ++i)
 {
  values[i] = (Datum) ((void*)0);
  replaces[i] = 1;
  nulls[i] = 0;
 }

 namestrcpy(&oname, operatorName);
 values[Anum_pg_operator_oprname - 1] = NameGetDatum(&oname);
 values[Anum_pg_operator_oprnamespace - 1] = ObjectIdGetDatum(operatorNamespace);
 values[Anum_pg_operator_oprowner - 1] = ObjectIdGetDatum(GetUserId());
 values[Anum_pg_operator_oprkind - 1] = CharGetDatum(leftTypeId ? (rightTypeId ? 'b' : 'r') : 'l');
 values[Anum_pg_operator_oprcanmerge - 1] = BoolGetDatum(canMerge);
 values[Anum_pg_operator_oprcanhash - 1] = BoolGetDatum(canHash);
 values[Anum_pg_operator_oprleft - 1] = ObjectIdGetDatum(leftTypeId);
 values[Anum_pg_operator_oprright - 1] = ObjectIdGetDatum(rightTypeId);
 values[Anum_pg_operator_oprresult - 1] = ObjectIdGetDatum(operResultType);
 values[Anum_pg_operator_oprcom - 1] = ObjectIdGetDatum(commutatorId);
 values[Anum_pg_operator_oprnegate - 1] = ObjectIdGetDatum(negatorId);
 values[Anum_pg_operator_oprcode - 1] = ObjectIdGetDatum(procedureId);
 values[Anum_pg_operator_oprrest - 1] = ObjectIdGetDatum(restrictionId);
 values[Anum_pg_operator_oprjoin - 1] = ObjectIdGetDatum(joinId);

 pg_operator_desc = table_open(OperatorRelationId, RowExclusiveLock);




 if (operatorObjectId)
 {
  isUpdate = 1;

  tup = SearchSysCacheCopy1(OPEROID,
          ObjectIdGetDatum(operatorObjectId));
  if (!HeapTupleIsValid(tup))
   elog(ERROR, "cache lookup failed for operator %u",
     operatorObjectId);

  replaces[Anum_pg_operator_oid - 1] = 0;
  tup = heap_modify_tuple(tup,
        RelationGetDescr(pg_operator_desc),
        values,
        nulls,
        replaces);

  CatalogTupleUpdate(pg_operator_desc, &tup->t_self, tup);
 }
 else
 {
  isUpdate = 0;

  operatorObjectId = GetNewOidWithIndex(pg_operator_desc,
             OperatorOidIndexId,
             Anum_pg_operator_oid);
  values[Anum_pg_operator_oid - 1] = ObjectIdGetDatum(operatorObjectId);

  tup = heap_form_tuple(RelationGetDescr(pg_operator_desc),
         values, nulls);

  CatalogTupleInsert(pg_operator_desc, tup);
 }


 address = makeOperatorDependencies(tup, isUpdate);


 InvokeObjectPostCreateHook(OperatorRelationId, operatorObjectId, 0);

 table_close(pg_operator_desc, RowExclusiveLock);
 if (selfCommutator)
  commutatorId = operatorObjectId;

 if (OidIsValid(commutatorId) || OidIsValid(negatorId))
  OperatorUpd(operatorObjectId, commutatorId, negatorId, 0);

 return address;
}
