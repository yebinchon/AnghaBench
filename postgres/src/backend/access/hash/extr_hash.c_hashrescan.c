
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numKilled; int hashso_buc_populated; int hashso_buc_split; int currPos; } ;
struct TYPE_6__ {int numberOfKeys; int keyData; int indexRelation; int opaque; } ;
typedef int ScanKeyData ;
typedef scalar_t__ ScanKey ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* HashScanOpaque ;


 int HashScanPosInvalidate (int ) ;
 scalar_t__ HashScanPosIsValid (int ) ;
 int _hash_dropscanbuf (int ,TYPE_2__*) ;
 int _hash_kill_items (TYPE_1__*) ;
 int memmove (int ,scalar_t__,int) ;

void
hashrescan(IndexScanDesc scan, ScanKey scankey, int nscankeys,
     ScanKey orderbys, int norderbys)
{
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 Relation rel = scan->indexRelation;

 if (HashScanPosIsValid(so->currPos))
 {

  if (so->numKilled > 0)
   _hash_kill_items(scan);
 }

 _hash_dropscanbuf(rel, so);


 HashScanPosInvalidate(so->currPos);


 if (scankey && scan->numberOfKeys > 0)
 {
  memmove(scan->keyData,
    scankey,
    scan->numberOfKeys * sizeof(ScanKeyData));
 }

 so->hashso_buc_populated = 0;
 so->hashso_buc_split = 0;
}
