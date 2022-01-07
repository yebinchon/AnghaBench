
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


 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CommandCounterIncrement () ;
 int GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 void* InvalidOid ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int OperatorRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
OperatorUpd(Oid baseId, Oid commId, Oid negId, bool isDelete)
{
 Relation pg_operator_desc;
 HeapTuple tup;







 if (!isDelete)
  CommandCounterIncrement();


 pg_operator_desc = table_open(OperatorRelationId, RowExclusiveLock);


 if (OidIsValid(commId))
  tup = SearchSysCacheCopy1(OPEROID, ObjectIdGetDatum(commId));
 else
  tup = ((void*)0);


 if (HeapTupleIsValid(tup))
 {
  Form_pg_operator t = (Form_pg_operator) GETSTRUCT(tup);
  bool update_commutator = 0;






  if (isDelete && t->oprcom == baseId)
  {
   t->oprcom = InvalidOid;
   update_commutator = 1;
  }
  else if (!isDelete && !OidIsValid(t->oprcom))
  {
   t->oprcom = baseId;
   update_commutator = 1;
  }


  if (update_commutator)
  {
   CatalogTupleUpdate(pg_operator_desc, &tup->t_self, tup);
   CommandCounterIncrement();
  }
 }




 if (OidIsValid(negId))
  tup = SearchSysCacheCopy1(OPEROID, ObjectIdGetDatum(negId));
 else
  tup = ((void*)0);

 if (HeapTupleIsValid(tup))
 {
  Form_pg_operator t = (Form_pg_operator) GETSTRUCT(tup);
  bool update_negator = 0;






  if (isDelete && t->oprnegate == baseId)
  {
   t->oprnegate = InvalidOid;
   update_negator = 1;
  }
  else if (!isDelete && !OidIsValid(t->oprnegate))
  {
   t->oprnegate = baseId;
   update_negator = 1;
  }


  if (update_negator)
  {
   CatalogTupleUpdate(pg_operator_desc, &tup->t_self, tup);







   if (isDelete)
    CommandCounterIncrement();
  }
 }


 table_close(pg_operator_desc, RowExclusiveLock);
}
