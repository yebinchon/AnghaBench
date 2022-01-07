
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rd_smgr; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int reltoastrelid; } ;
typedef TYPE_2__* Relation ;


 int AccessShareLock ;
 int FlushRelationBuffers (TYPE_2__*) ;
 int MAIN_FORKNUM ;
 scalar_t__ OidIsValid (int ) ;
 int RelationNeedsWAL (TYPE_2__*) ;
 int smgrimmedsync (int ,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
heap_sync(Relation rel)
{

 if (!RelationNeedsWAL(rel))
  return;


 FlushRelationBuffers(rel);

 smgrimmedsync(rel->rd_smgr, MAIN_FORKNUM);




 if (OidIsValid(rel->rd_rel->reltoastrelid))
 {
  Relation toastrel;

  toastrel = table_open(rel->rd_rel->reltoastrelid, AccessShareLock);
  FlushRelationBuffers(toastrel);
  smgrimmedsync(toastrel->rd_smgr, MAIN_FORKNUM);
  table_close(toastrel, AccessShareLock);
 }
}
