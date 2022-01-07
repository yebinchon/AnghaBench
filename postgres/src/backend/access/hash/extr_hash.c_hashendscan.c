
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ numKilled; struct TYPE_8__* killedItems; int currPos; } ;
struct TYPE_7__ {int * opaque; int indexRelation; } ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* HashScanOpaque ;


 scalar_t__ HashScanPosIsValid (int ) ;
 int _hash_dropscanbuf (int ,TYPE_2__*) ;
 int _hash_kill_items (TYPE_1__*) ;
 int pfree (TYPE_2__*) ;

void
hashendscan(IndexScanDesc scan)
{
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 Relation rel = scan->indexRelation;

 if (HashScanPosIsValid(so->currPos))
 {

  if (so->numKilled > 0)
   _hash_kill_items(scan);
 }

 _hash_dropscanbuf(rel, so);

 if (so->killedItems != ((void*)0))
  pfree(so->killedItems);
 pfree(so);
 scan->opaque = ((void*)0);
}
