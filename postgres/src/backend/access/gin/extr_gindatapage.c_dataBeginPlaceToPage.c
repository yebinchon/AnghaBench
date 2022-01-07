
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int GinPlaceToPageRC ;
typedef int GinBtreeStack ;
typedef int GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BufferGetPage (int ) ;
 int GinPageIsData (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int dataBeginPlaceToPageInternal (int ,int ,int *,void*,int ,void**,int *,int *) ;
 int dataBeginPlaceToPageLeaf (int ,int ,int *,void*,void**,int *,int *) ;

__attribute__((used)) static GinPlaceToPageRC
dataBeginPlaceToPage(GinBtree btree, Buffer buf, GinBtreeStack *stack,
      void *insertdata, BlockNumber updateblkno,
      void **ptp_workspace,
      Page *newlpage, Page *newrpage)
{
 Page page = BufferGetPage(buf);

 Assert(GinPageIsData(page));

 if (GinPageIsLeaf(page))
  return dataBeginPlaceToPageLeaf(btree, buf, stack, insertdata,
          ptp_workspace,
          newlpage, newrpage);
 else
  return dataBeginPlaceToPageInternal(btree, buf, stack,
           insertdata, updateblkno,
           ptp_workspace,
           newlpage, newrpage);
}
