
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PostingItem ;
typedef int Page ;
typedef int GinPlaceToPageRC ;
typedef int GinBtreeStack ;
typedef int GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int GPTP_INSERT ;
 int GPTP_SPLIT ;
 int GinNonLeafDataPageGetFreeSpace (int ) ;
 int dataSplitPageInternal (int ,int ,int *,void*,int ,int *,int *) ;

__attribute__((used)) static GinPlaceToPageRC
dataBeginPlaceToPageInternal(GinBtree btree, Buffer buf, GinBtreeStack *stack,
        void *insertdata, BlockNumber updateblkno,
        void **ptp_workspace,
        Page *newlpage, Page *newrpage)
{
 Page page = BufferGetPage(buf);


 if (GinNonLeafDataPageGetFreeSpace(page) < sizeof(PostingItem))
 {
  dataSplitPageInternal(btree, buf, stack, insertdata, updateblkno,
         newlpage, newrpage);
  return GPTP_SPLIT;
 }


 return GPTP_INSERT;
}
