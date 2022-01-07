
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
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int SEQRELID ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int SequenceRelationId ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteSequenceTuple(Oid relid)
{
 Relation rel;
 HeapTuple tuple;

 rel = table_open(SequenceRelationId, RowExclusiveLock);

 tuple = SearchSysCache1(SEQRELID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for sequence %u", relid);

 CatalogTupleDelete(rel, &tuple->t_self);

 ReleaseSysCache(tuple);
 table_close(rel, RowExclusiveLock);
}
