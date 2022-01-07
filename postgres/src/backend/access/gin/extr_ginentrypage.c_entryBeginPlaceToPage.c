
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int off; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int GinPlaceToPageRC ;
typedef TYPE_1__ GinBtreeStack ;
typedef int GinBtreeEntryInsertData ;
typedef int GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int GPTP_INSERT ;
 int GPTP_SPLIT ;
 int entryIsEnoughSpace (int ,int ,int ,int *) ;
 int entrySplitPage (int ,int ,TYPE_1__*,int *,int ,int *,int *) ;

__attribute__((used)) static GinPlaceToPageRC
entryBeginPlaceToPage(GinBtree btree, Buffer buf, GinBtreeStack *stack,
       void *insertPayload, BlockNumber updateblkno,
       void **ptp_workspace,
       Page *newlpage, Page *newrpage)
{
 GinBtreeEntryInsertData *insertData = insertPayload;
 OffsetNumber off = stack->off;


 if (!entryIsEnoughSpace(btree, buf, off, insertData))
 {
  entrySplitPage(btree, buf, stack, insertData, updateblkno,
        newlpage, newrpage);
  return GPTP_SPLIT;
 }


 return GPTP_INSERT;
}
