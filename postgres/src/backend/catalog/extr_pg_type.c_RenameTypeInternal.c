
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ typnamespace; scalar_t__ typarray; int typname; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_type ;


 int Anum_pg_type_oid ;
 int Assert (int) ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 scalar_t__ GetSysCacheOid2 (int ,int ,int ,int ) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int TYPENAMENSP ;
 int TYPEOID ;
 int TypeRelationId ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ get_typisdefined (scalar_t__) ;
 int heap_freetuple (TYPE_1__*) ;
 char* makeArrayTypeName (char const*,scalar_t__) ;
 scalar_t__ moveArrayTypeName (scalar_t__,char const*,scalar_t__) ;
 int namestrcpy (int *,char const*) ;
 int pfree (char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RenameTypeInternal(Oid typeOid, const char *newTypeName, Oid typeNamespace)
{
 Relation pg_type_desc;
 HeapTuple tuple;
 Form_pg_type typ;
 Oid arrayOid;
 Oid oldTypeOid;

 pg_type_desc = table_open(TypeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for type %u", typeOid);
 typ = (Form_pg_type) GETSTRUCT(tuple);


 Assert(typeNamespace == typ->typnamespace);

 arrayOid = typ->typarray;


 oldTypeOid = GetSysCacheOid2(TYPENAMENSP, Anum_pg_type_oid,
         CStringGetDatum(newTypeName),
         ObjectIdGetDatum(typeNamespace));
 if (OidIsValid(oldTypeOid))
 {
  if (get_typisdefined(oldTypeOid) &&
   moveArrayTypeName(oldTypeOid, newTypeName, typeNamespace))
                                          ;
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("type \"%s\" already exists", newTypeName)));
 }


 namestrcpy(&(typ->typname), newTypeName);

 CatalogTupleUpdate(pg_type_desc, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(TypeRelationId, typeOid, 0);

 heap_freetuple(tuple);
 table_close(pg_type_desc, RowExclusiveLock);






 if (OidIsValid(arrayOid) && arrayOid != oldTypeOid)
 {
  char *arrname = makeArrayTypeName(newTypeName, typeNamespace);

  RenameTypeInternal(arrayOid, arrname, typeNamespace);
  pfree(arrname);
 }
}
