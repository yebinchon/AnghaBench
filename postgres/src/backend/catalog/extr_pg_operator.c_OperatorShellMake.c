
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_6__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef scalar_t__ Oid ;
typedef int NameData ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;


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
 scalar_t__ BoolGetDatum (int) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 scalar_t__ CharGetDatum (char) ;
 int CommandCounterIncrement () ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 scalar_t__ GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 scalar_t__ GetUserId () ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostCreateHook (int ,scalar_t__,int ) ;
 scalar_t__ NameGetDatum (int *) ;
 int Natts_pg_operator ;
 scalar_t__ ObjectIdGetDatum (scalar_t__) ;
 int OperatorOidIndexId ;
 int OperatorRelationId ;
 int RowExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int heap_freetuple (int ) ;
 int makeOperatorDependencies (int ,int) ;
 int namestrcpy (int *,char const*) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int validOperatorName (char const*) ;

__attribute__((used)) static Oid
OperatorShellMake(const char *operatorName,
      Oid operatorNamespace,
      Oid leftTypeId,
      Oid rightTypeId)
{
 Relation pg_operator_desc;
 Oid operatorObjectId;
 int i;
 HeapTuple tup;
 Datum values[Natts_pg_operator];
 bool nulls[Natts_pg_operator];
 NameData oname;
 TupleDesc tupDesc;




 if (!validOperatorName(operatorName))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("\"%s\" is not a valid operator name",
      operatorName)));




 pg_operator_desc = table_open(OperatorRelationId, RowExclusiveLock);
 tupDesc = pg_operator_desc->rd_att;




 for (i = 0; i < Natts_pg_operator; ++i)
 {
  nulls[i] = 0;
  values[i] = (Datum) ((void*)0);
 }





 operatorObjectId = GetNewOidWithIndex(pg_operator_desc, OperatorOidIndexId,
            Anum_pg_operator_oid);
 values[Anum_pg_operator_oid - 1] = ObjectIdGetDatum(operatorObjectId);
 namestrcpy(&oname, operatorName);
 values[Anum_pg_operator_oprname - 1] = NameGetDatum(&oname);
 values[Anum_pg_operator_oprnamespace - 1] = ObjectIdGetDatum(operatorNamespace);
 values[Anum_pg_operator_oprowner - 1] = ObjectIdGetDatum(GetUserId());
 values[Anum_pg_operator_oprkind - 1] = CharGetDatum(leftTypeId ? (rightTypeId ? 'b' : 'r') : 'l');
 values[Anum_pg_operator_oprcanmerge - 1] = BoolGetDatum(0);
 values[Anum_pg_operator_oprcanhash - 1] = BoolGetDatum(0);
 values[Anum_pg_operator_oprleft - 1] = ObjectIdGetDatum(leftTypeId);
 values[Anum_pg_operator_oprright - 1] = ObjectIdGetDatum(rightTypeId);
 values[Anum_pg_operator_oprresult - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_operator_oprcom - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_operator_oprnegate - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_operator_oprcode - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_operator_oprrest - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_operator_oprjoin - 1] = ObjectIdGetDatum(InvalidOid);




 tup = heap_form_tuple(tupDesc, values, nulls);




 CatalogTupleInsert(pg_operator_desc, tup);


 makeOperatorDependencies(tup, 0);

 heap_freetuple(tup);


 InvokeObjectPostCreateHook(OperatorRelationId, operatorObjectId, 0);




 CommandCounterIncrement();




 table_close(pg_operator_desc, RowExclusiveLock);

 return operatorObjectId;
}
