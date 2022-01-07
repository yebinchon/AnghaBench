
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {char relpersistence; int reltablespace; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int MultiXactId ;


 int AccessExclusiveLock ;
 int IsSystemRelation (TYPE_2__*) ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int RelationGetRelid (TYPE_2__*) ;
 int copy_table_data (int ,int ,int ,int,int*,int *,int *) ;
 int finish_heap_swap (int ,int ,int,int,int,int,int ,int ,char) ;
 int make_new_heap (int ,int ,char,int ) ;
 int mark_index_clustered (TYPE_2__*,int ,int) ;
 int table_close (TYPE_2__*,int ) ;

__attribute__((used)) static void
rebuild_relation(Relation OldHeap, Oid indexOid, bool verbose)
{
 Oid tableOid = RelationGetRelid(OldHeap);
 Oid tableSpace = OldHeap->rd_rel->reltablespace;
 Oid OIDNewHeap;
 char relpersistence;
 bool is_system_catalog;
 bool swap_toast_by_content;
 TransactionId frozenXid;
 MultiXactId cutoffMulti;


 if (OidIsValid(indexOid))
  mark_index_clustered(OldHeap, indexOid, 1);


 relpersistence = OldHeap->rd_rel->relpersistence;
 is_system_catalog = IsSystemRelation(OldHeap);


 table_close(OldHeap, NoLock);


 OIDNewHeap = make_new_heap(tableOid, tableSpace,
          relpersistence,
          AccessExclusiveLock);


 copy_table_data(OIDNewHeap, tableOid, indexOid, verbose,
     &swap_toast_by_content, &frozenXid, &cutoffMulti);





 finish_heap_swap(tableOid, OIDNewHeap, is_system_catalog,
      swap_toast_by_content, 0, 1,
      frozenXid, cutoffMulti,
      relpersistence);
}
