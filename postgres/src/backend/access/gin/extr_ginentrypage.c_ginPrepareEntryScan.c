
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int isData; int fullScan; int isBuild; int entryCategory; int entryKey; int entryAttnum; int prepareDownlink; int fillRoot; int execPlaceToPage; int beginPlaceToPage; int findChildPtr; int findItem; int isMoveRight; int getLeftMostChild; int findChildPage; TYPE_1__* ginstate; int rootBlkno; int index; } ;
struct TYPE_6__ {int index; } ;
typedef int OffsetNumber ;
typedef TYPE_1__ GinState ;
typedef int GinNullCategory ;
typedef int GinBtreeData ;
typedef TYPE_2__* GinBtree ;
typedef int Datum ;


 int GIN_ROOT_BLKNO ;
 int entryBeginPlaceToPage ;
 int entryExecPlaceToPage ;
 int entryFindChildPtr ;
 int entryGetLeftMostPage ;
 int entryIsMoveRight ;
 int entryLocateEntry ;
 int entryLocateLeafEntry ;
 int entryPrepareDownlink ;
 int ginEntryFillRoot ;
 int memset (TYPE_2__*,int ,int) ;

void
ginPrepareEntryScan(GinBtree btree, OffsetNumber attnum,
     Datum key, GinNullCategory category,
     GinState *ginstate)
{
 memset(btree, 0, sizeof(GinBtreeData));

 btree->index = ginstate->index;
 btree->rootBlkno = GIN_ROOT_BLKNO;
 btree->ginstate = ginstate;

 btree->findChildPage = entryLocateEntry;
 btree->getLeftMostChild = entryGetLeftMostPage;
 btree->isMoveRight = entryIsMoveRight;
 btree->findItem = entryLocateLeafEntry;
 btree->findChildPtr = entryFindChildPtr;
 btree->beginPlaceToPage = entryBeginPlaceToPage;
 btree->execPlaceToPage = entryExecPlaceToPage;
 btree->fillRoot = ginEntryFillRoot;
 btree->prepareDownlink = entryPrepareDownlink;

 btree->isData = 0;
 btree->fullScan = 0;
 btree->isBuild = 0;

 btree->entryAttnum = attnum;
 btree->entryKey = key;
 btree->entryCategory = category;
}
