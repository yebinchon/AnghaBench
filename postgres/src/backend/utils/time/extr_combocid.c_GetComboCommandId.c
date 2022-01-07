
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_10__ {size_t combocid; } ;
struct TYPE_9__ {size_t cmin; size_t cmax; } ;
struct TYPE_8__ {int keysize; int entrysize; int hcxt; } ;
typedef TYPE_1__ HASHCTL ;
typedef size_t CommandId ;
typedef TYPE_2__ ComboCidKeyData ;
typedef int ComboCidEntryData ;
typedef TYPE_3__* ComboCidEntry ;


 int CCID_ARRAY_SIZE ;
 int CCID_HASH_SIZE ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TopTransactionContext ;
 TYPE_2__* comboCids ;
 int * comboHash ;
 int * hash_create (char*,int ,TYPE_1__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ repalloc (TYPE_2__*,int) ;
 int sizeComboCids ;
 int usedComboCids ;

__attribute__((used)) static CommandId
GetComboCommandId(CommandId cmin, CommandId cmax)
{
 CommandId combocid;
 ComboCidKeyData key;
 ComboCidEntry entry;
 bool found;





 if (comboHash == ((void*)0))
 {
  HASHCTL hash_ctl;


  comboCids = (ComboCidKeyData *)
   MemoryContextAlloc(TopTransactionContext,
          sizeof(ComboCidKeyData) * CCID_ARRAY_SIZE);
  sizeComboCids = CCID_ARRAY_SIZE;
  usedComboCids = 0;

  memset(&hash_ctl, 0, sizeof(hash_ctl));
  hash_ctl.keysize = sizeof(ComboCidKeyData);
  hash_ctl.entrysize = sizeof(ComboCidEntryData);
  hash_ctl.hcxt = TopTransactionContext;

  comboHash = hash_create("Combo CIDs",
        CCID_HASH_SIZE,
        &hash_ctl,
        HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
 }






 if (usedComboCids >= sizeComboCids)
 {
  int newsize = sizeComboCids * 2;

  comboCids = (ComboCidKeyData *)
   repalloc(comboCids, sizeof(ComboCidKeyData) * newsize);
  sizeComboCids = newsize;
 }




 key.cmin = cmin;
 key.cmax = cmax;
 entry = (ComboCidEntry) hash_search(comboHash,
          (void *) &key,
          HASH_ENTER,
          &found);

 if (found)
 {

  return entry->combocid;
 }


 combocid = usedComboCids;

 comboCids[combocid].cmin = cmin;
 comboCids[combocid].cmax = cmax;
 usedComboCids++;

 entry->combocid = combocid;

 return combocid;
}
