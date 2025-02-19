
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int EVENTTRIGGEROID ;
 int EventTriggerRelationId ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveEventTriggerById(Oid trigOid)
{
 Relation tgrel;
 HeapTuple tup;

 tgrel = table_open(EventTriggerRelationId, RowExclusiveLock);

 tup = SearchSysCache1(EVENTTRIGGEROID, ObjectIdGetDatum(trigOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for event trigger %u", trigOid);

 CatalogTupleDelete(tgrel, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(tgrel, RowExclusiveLock);
}
