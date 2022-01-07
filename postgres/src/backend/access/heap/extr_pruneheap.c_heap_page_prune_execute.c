
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int ItemIdSetDead (int ) ;
 int ItemIdSetRedirect (int ,int ) ;
 int ItemIdSetUnused (int ) ;
 int PageGetItemId (int ,int ) ;
 int PageRepairFragmentation (int ) ;

void
heap_page_prune_execute(Buffer buffer,
      OffsetNumber *redirected, int nredirected,
      OffsetNumber *nowdead, int ndead,
      OffsetNumber *nowunused, int nunused)
{
 Page page = (Page) BufferGetPage(buffer);
 OffsetNumber *offnum;
 int i;


 offnum = redirected;
 for (i = 0; i < nredirected; i++)
 {
  OffsetNumber fromoff = *offnum++;
  OffsetNumber tooff = *offnum++;
  ItemId fromlp = PageGetItemId(page, fromoff);

  ItemIdSetRedirect(fromlp, tooff);
 }


 offnum = nowdead;
 for (i = 0; i < ndead; i++)
 {
  OffsetNumber off = *offnum++;
  ItemId lp = PageGetItemId(page, off);

  ItemIdSetDead(lp);
 }


 offnum = nowunused;
 for (i = 0; i < nunused; i++)
 {
  OffsetNumber off = *offnum++;
  ItemId lp = PageGetItemId(page, off);

  ItemIdSetUnused(lp);
 }





 PageRepairFragmentation(page);
}
