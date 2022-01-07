
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int node; int offnum; int page; } ;
typedef scalar_t__ SpGistInnerTuple ;
typedef TYPE_1__ SPPageDesc ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int BlockNumber ;


 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int spgUpdateNodeLink (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
saveNodeLink(Relation index, SPPageDesc *parent,
    BlockNumber blkno, OffsetNumber offnum)
{
 SpGistInnerTuple innerTuple;

 innerTuple = (SpGistInnerTuple) PageGetItem(parent->page,
            PageGetItemId(parent->page, parent->offnum));

 spgUpdateNodeLink(innerTuple, parent->node, blkno, offnum);

 MarkBufferDirty(parent->buffer);
}
