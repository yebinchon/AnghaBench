
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int GinBtreeStack ;
typedef int GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int dataExecPlaceToPageInternal (int ,int ,int *,void*,int ,void*) ;
 int dataExecPlaceToPageLeaf (int ,int ,int *,void*,void*) ;

__attribute__((used)) static void
dataExecPlaceToPage(GinBtree btree, Buffer buf, GinBtreeStack *stack,
     void *insertdata, BlockNumber updateblkno,
     void *ptp_workspace)
{
 Page page = BufferGetPage(buf);

 if (GinPageIsLeaf(page))
  dataExecPlaceToPageLeaf(btree, buf, stack, insertdata,
        ptp_workspace);
 else
  dataExecPlaceToPageInternal(btree, buf, stack, insertdata,
         updateblkno, ptp_workspace);
}
