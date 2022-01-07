
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isData; int fullScan; int isBuild; int prepareDownlink; int fillRoot; int execPlaceToPage; int beginPlaceToPage; int findChildPtr; int * findItem; int isMoveRight; int getLeftMostChild; int findChildPage; int rootBlkno; int index; } ;
typedef int Relation ;
typedef int GinBtreeData ;
typedef TYPE_1__* GinBtree ;
typedef int BlockNumber ;


 int dataBeginPlaceToPage ;
 int dataExecPlaceToPage ;
 int dataFindChildPtr ;
 int dataGetLeftMostPage ;
 int dataIsMoveRight ;
 int dataLocateItem ;
 int dataPrepareDownlink ;
 int ginDataFillRoot ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
ginPrepareDataScan(GinBtree btree, Relation index, BlockNumber rootBlkno)
{
 memset(btree, 0, sizeof(GinBtreeData));

 btree->index = index;
 btree->rootBlkno = rootBlkno;

 btree->findChildPage = dataLocateItem;
 btree->getLeftMostChild = dataGetLeftMostPage;
 btree->isMoveRight = dataIsMoveRight;
 btree->findItem = ((void*)0);
 btree->findChildPtr = dataFindChildPtr;
 btree->beginPlaceToPage = dataBeginPlaceToPage;
 btree->execPlaceToPage = dataExecPlaceToPage;
 btree->fillRoot = ginDataFillRoot;
 btree->prepareDownlink = dataPrepareDownlink;

 btree->isData = 1;
 btree->fullScan = 0;
 btree->isBuild = 0;
}
