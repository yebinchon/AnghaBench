
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ relchecks; } ;
struct TYPE_12__ {scalar_t__ contype; int contypid; int conrelid; } ;
struct TYPE_11__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;
typedef TYPE_3__* Form_pg_class ;


 int AccessExclusiveLock ;
 scalar_t__ CONSTRAINT_CHECK ;
 int CONSTROID ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ConstraintRelationId ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RELOID ;
 int RelationGetRelationName (int ) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveConstraintById(Oid conId)
{
 Relation conDesc;
 HeapTuple tup;
 Form_pg_constraint con;

 conDesc = table_open(ConstraintRelationId, RowExclusiveLock);

 tup = SearchSysCache1(CONSTROID, ObjectIdGetDatum(conId));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for constraint %u", conId);
 con = (Form_pg_constraint) GETSTRUCT(tup);




 if (OidIsValid(con->conrelid))
 {
  Relation rel;





  rel = table_open(con->conrelid, AccessExclusiveLock);






  if (con->contype == CONSTRAINT_CHECK)
  {
   Relation pgrel;
   HeapTuple relTup;
   Form_pg_class classForm;

   pgrel = table_open(RelationRelationId, RowExclusiveLock);
   relTup = SearchSysCacheCopy1(RELOID,
           ObjectIdGetDatum(con->conrelid));
   if (!HeapTupleIsValid(relTup))
    elog(ERROR, "cache lookup failed for relation %u",
      con->conrelid);
   classForm = (Form_pg_class) GETSTRUCT(relTup);

   if (classForm->relchecks == 0)
    elog(ERROR, "relation \"%s\" has relchecks = 0",
      RelationGetRelationName(rel));
   classForm->relchecks--;

   CatalogTupleUpdate(pgrel, &relTup->t_self, relTup);

   heap_freetuple(relTup);

   table_close(pgrel, RowExclusiveLock);
  }


  table_close(rel, NoLock);
 }
 else if (OidIsValid(con->contypid))
 {






 }
 else
  elog(ERROR, "constraint %u is not of a known type", conId);


 CatalogTupleDelete(conDesc, &tup->t_self);


 ReleaseSysCache(tup);
 table_close(conDesc, RowExclusiveLock);
}
