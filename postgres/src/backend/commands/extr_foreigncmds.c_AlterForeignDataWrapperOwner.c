
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_data_wrapper ;


 int AlterForeignDataWrapperOwner_internal (int ,int ,int ) ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNDATAWRAPPERNAME ;
 int ForeignDataWrapperRelationId ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterForeignDataWrapperOwner(const char *name, Oid newOwnerId)
{
 Oid fdwId;
 HeapTuple tup;
 Relation rel;
 ObjectAddress address;
 Form_pg_foreign_data_wrapper form;


 rel = table_open(ForeignDataWrapperRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(FOREIGNDATAWRAPPERNAME, CStringGetDatum(name));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign-data wrapper \"%s\" does not exist", name)));

 form = (Form_pg_foreign_data_wrapper) GETSTRUCT(tup);
 fdwId = form->oid;

 AlterForeignDataWrapperOwner_internal(rel, tup, newOwnerId);

 ObjectAddressSet(address, ForeignDataWrapperRelationId, fdwId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);

 return address;
}
