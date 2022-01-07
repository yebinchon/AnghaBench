
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relreplident; } ;
typedef int StringInfo ;
typedef TYPE_2__* Relation ;
typedef int * HeapTuple ;


 int Assert (int) ;
 scalar_t__ REPLICA_IDENTITY_DEFAULT ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 scalar_t__ REPLICA_IDENTITY_INDEX ;
 int RelationGetRelid (TYPE_2__*) ;
 int logicalrep_write_tuple (int ,TYPE_2__*,int *) ;
 int pq_sendbyte (int ,char) ;
 int pq_sendint32 (int ,int ) ;

void
logicalrep_write_update(StringInfo out, Relation rel, HeapTuple oldtuple,
      HeapTuple newtuple)
{
 pq_sendbyte(out, 'U');

 Assert(rel->rd_rel->relreplident == REPLICA_IDENTITY_DEFAULT ||
     rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL ||
     rel->rd_rel->relreplident == REPLICA_IDENTITY_INDEX);


 pq_sendint32(out, RelationGetRelid(rel));

 if (oldtuple != ((void*)0))
 {
  if (rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL)
   pq_sendbyte(out, 'O');
  else
   pq_sendbyte(out, 'K');
  logicalrep_write_tuple(out, rel, oldtuple);
 }

 pq_sendbyte(out, 'N');
 logicalrep_write_tuple(out, rel, newtuple);
}
