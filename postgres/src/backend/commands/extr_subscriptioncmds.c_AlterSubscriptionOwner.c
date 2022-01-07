
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
typedef TYPE_1__* Form_pg_subscription ;


 int AlterSubscriptionOwner_internal (int ,int ,int ) ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MyDatabaseId ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RowExclusiveLock ;
 int SUBSCRIPTIONNAME ;
 int SearchSysCacheCopy2 (int ,int ,int ) ;
 int SubscriptionRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterSubscriptionOwner(const char *name, Oid newOwnerId)
{
 Oid subid;
 HeapTuple tup;
 Relation rel;
 ObjectAddress address;
 Form_pg_subscription form;

 rel = table_open(SubscriptionRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy2(SUBSCRIPTIONNAME, MyDatabaseId,
         CStringGetDatum(name));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("subscription \"%s\" does not exist", name)));

 form = (Form_pg_subscription) GETSTRUCT(tup);
 subid = form->oid;

 AlterSubscriptionOwner_internal(rel, tup, newOwnerId);

 ObjectAddressSet(address, SubscriptionRelationId, subid);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);

 return address;
}
