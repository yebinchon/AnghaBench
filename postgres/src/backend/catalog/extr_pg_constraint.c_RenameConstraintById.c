
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int conname; int contypid; int conrelid; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;


 int CONSTRAINT_DOMAIN ;
 int CONSTRAINT_RELATION ;
 int CONSTROID ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 scalar_t__ ConstraintNameIsUsed (int ,int ,char const*) ;
 int ConstraintRelationId ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int format_type_be (int ) ;
 int get_rel_name (int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int namestrcpy (int *,char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RenameConstraintById(Oid conId, const char *newname)
{
 Relation conDesc;
 HeapTuple tuple;
 Form_pg_constraint con;

 conDesc = table_open(ConstraintRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(CONSTROID, ObjectIdGetDatum(conId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for constraint %u", conId);
 con = (Form_pg_constraint) GETSTRUCT(tuple);




 if (OidIsValid(con->conrelid) &&
  ConstraintNameIsUsed(CONSTRAINT_RELATION,
        con->conrelid,
        newname))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("constraint \"%s\" for relation \"%s\" already exists",
      newname, get_rel_name(con->conrelid))));
 if (OidIsValid(con->contypid) &&
  ConstraintNameIsUsed(CONSTRAINT_DOMAIN,
        con->contypid,
        newname))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("constraint \"%s\" for domain %s already exists",
      newname, format_type_be(con->contypid))));


 namestrcpy(&(con->conname), newname);

 CatalogTupleUpdate(conDesc, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(ConstraintRelationId, conId, 0);

 heap_freetuple(tuple);
 table_close(conDesc, RowExclusiveLock);
}
