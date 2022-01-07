
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ oprcom; scalar_t__ oprnegate; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int OperatorRelationId ;
 int OperatorUpd (scalar_t__,scalar_t__,scalar_t__,int) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveOperatorById(Oid operOid)
{
 Relation relation;
 HeapTuple tup;
 Form_pg_operator op;

 relation = table_open(OperatorRelationId, RowExclusiveLock);

 tup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for operator %u", operOid);
 op = (Form_pg_operator) GETSTRUCT(tup);







 if (OidIsValid(op->oprcom) || OidIsValid(op->oprnegate))
 {
  OperatorUpd(operOid, op->oprcom, op->oprnegate, 1);
  if (operOid == op->oprcom || operOid == op->oprnegate)
  {
   ReleaseSysCache(tup);
   tup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operOid));
   if (!HeapTupleIsValid(tup))
    elog(ERROR, "cache lookup failed for operator %u", operOid);
  }
 }

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);
}
