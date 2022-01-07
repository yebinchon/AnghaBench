
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {unsigned int lp_off; } ;
struct TYPE_13__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef unsigned int Size ;
typedef TYPE_1__* PageHeader ;
typedef TYPE_1__* Page ;
typedef int OffsetNumber ;
typedef int ItemIdData ;
typedef TYPE_3__* ItemId ;


 int Assert (scalar_t__) ;
 scalar_t__ BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 unsigned int ItemIdGetLength (TYPE_3__*) ;
 unsigned int ItemIdGetOffset (TYPE_3__*) ;
 scalar_t__ ItemIdHasStorage (TYPE_3__*) ;
 int ItemIdSetUnused (TYPE_3__*) ;
 unsigned int MAXALIGN (unsigned int) ;
 TYPE_3__* PageGetItemId (TYPE_1__*,int) ;
 int PageGetMaxOffsetNumber (TYPE_1__*) ;
 int PageIsEmpty (TYPE_1__*) ;
 scalar_t__ SizeOfPageHeaderData ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,unsigned int,unsigned int,...) ;
 int memmove (char*,char*,unsigned int) ;

void
PageIndexTupleDeleteNoCompact(Page page, OffsetNumber offnum)
{
 PageHeader phdr = (PageHeader) page;
 char *addr;
 ItemId tup;
 Size size;
 unsigned offset;
 int nline;




 if (phdr->pd_lower < SizeOfPageHeaderData ||
  phdr->pd_lower > phdr->pd_upper ||
  phdr->pd_upper > phdr->pd_special ||
  phdr->pd_special > BLCKSZ ||
  phdr->pd_special != MAXALIGN(phdr->pd_special))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted page pointers: lower = %u, upper = %u, special = %u",
      phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));

 nline = PageGetMaxOffsetNumber(page);
 if ((int) offnum <= 0 || (int) offnum > nline)
  elog(ERROR, "invalid index offnum: %u", offnum);

 tup = PageGetItemId(page, offnum);
 Assert(ItemIdHasStorage(tup));
 size = ItemIdGetLength(tup);
 offset = ItemIdGetOffset(tup);

 if (offset < phdr->pd_upper || (offset + size) > phdr->pd_special ||
  offset != MAXALIGN(offset))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted line pointer: offset = %u, size = %u",
      offset, (unsigned int) size)));


 size = MAXALIGN(size);






 if ((int) offnum < nline)
  ItemIdSetUnused(tup);
 else
 {
  phdr->pd_lower -= sizeof(ItemIdData);
  nline--;
 }
 addr = (char *) page + phdr->pd_upper;

 if (offset > phdr->pd_upper)
  memmove(addr + size, addr, offset - phdr->pd_upper);


 phdr->pd_upper += size;







 if (!PageIsEmpty(page))
 {
  int i;

  for (i = 1; i <= nline; i++)
  {
   ItemId ii = PageGetItemId(phdr, i);

   if (ItemIdHasStorage(ii) && ItemIdGetOffset(ii) <= offset)
    ii->lp_off += size;
  }
 }
}
