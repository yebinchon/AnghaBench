
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {int btpo_next; } ;
struct TYPE_8__ {scalar_t__ nextkey; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef int BTStack ;
typedef TYPE_1__* BTScanInsert ;
typedef TYPE_2__* BTPageOpaque ;


 int BT_READ ;
 int BT_WRITE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 int LockBuffer (int ,int ) ;
 int P_HIKEY ;
 scalar_t__ P_IGNORE (TYPE_2__*) ;
 scalar_t__ P_INCOMPLETE_SPLIT (TYPE_2__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_2__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int _bt_compare (int ,TYPE_1__*,int ,int ) ;
 int _bt_finish_split (int ,int ,int ) ;
 int _bt_getbuf (int ,int ,int) ;
 int _bt_relandgetbuf (int ,int ,int ,int) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*,int ) ;

Buffer
_bt_moveright(Relation rel,
     BTScanInsert key,
     Buffer buf,
     bool forupdate,
     BTStack stack,
     int access,
     Snapshot snapshot)
{
 Page page;
 BTPageOpaque opaque;
 int32 cmpval;
 cmpval = key->nextkey ? 0 : 1;

 for (;;)
 {
  page = BufferGetPage(buf);
  TestForOldSnapshot(snapshot, rel, page);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);

  if (P_RIGHTMOST(opaque))
   break;




  if (forupdate && P_INCOMPLETE_SPLIT(opaque))
  {
   BlockNumber blkno = BufferGetBlockNumber(buf);


   if (access == BT_READ)
   {
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
    LockBuffer(buf, BT_WRITE);
   }

   if (P_INCOMPLETE_SPLIT(opaque))
    _bt_finish_split(rel, buf, stack);
   else
    _bt_relbuf(rel, buf);


   buf = _bt_getbuf(rel, blkno, access);
   continue;
  }

  if (P_IGNORE(opaque) || _bt_compare(rel, key, page, P_HIKEY) >= cmpval)
  {

   buf = _bt_relandgetbuf(rel, buf, opaque->btpo_next, access);
   continue;
  }
  else
   break;
 }

 if (P_IGNORE(opaque))
  elog(ERROR, "fell off the end of index \"%s\"",
    RelationGetRelationName(rel));

 return buf;
}
