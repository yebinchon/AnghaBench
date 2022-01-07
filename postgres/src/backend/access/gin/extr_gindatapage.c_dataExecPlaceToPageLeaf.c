
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int walinfolen; int walinfo; } ;
typedef TYPE_1__ disassembledLeaf ;
struct TYPE_6__ {int isBuild; int index; } ;
typedef int GinBtreeStack ;
typedef TYPE_2__* GinBtree ;
typedef int Buffer ;


 scalar_t__ RelationNeedsWAL (int ) ;
 int XLogRegisterBufData (int ,int ,int ) ;
 int dataPlaceToPageLeafRecompress (int ,TYPE_1__*) ;

__attribute__((used)) static void
dataExecPlaceToPageLeaf(GinBtree btree, Buffer buf, GinBtreeStack *stack,
      void *insertdata, void *ptp_workspace)
{
 disassembledLeaf *leaf = (disassembledLeaf *) ptp_workspace;


 dataPlaceToPageLeafRecompress(buf, leaf);


 if (RelationNeedsWAL(btree->index) && !btree->isBuild)
 {
  XLogRegisterBufData(0, leaf->walinfo, leaf->walinfolen);
 }
}
