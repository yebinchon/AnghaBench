
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int lp_off; } ;
struct TYPE_14__ {scalar_t__ pd_lower; scalar_t__ pd_upper; unsigned int pd_special; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__* PageHeader ;
typedef TYPE_1__* Page ;
typedef int OffsetNumber ;
typedef TYPE_3__* ItemId ;
typedef int Item ;


 int Assert (scalar_t__) ;
 unsigned int BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int FirstOffsetNumber ;
 int ItemIdGetLength (TYPE_3__*) ;
 unsigned int ItemIdGetOffset (TYPE_3__*) ;
 scalar_t__ ItemIdHasStorage (TYPE_3__*) ;
 int ItemIdSetNormal (TYPE_3__*,unsigned int,scalar_t__) ;
 unsigned int MAXALIGN (scalar_t__) ;
 int PageGetItem (TYPE_1__*,TYPE_3__*) ;
 TYPE_3__* PageGetItemId (TYPE_1__*,int) ;
 int PageGetMaxOffsetNumber (TYPE_1__*) ;
 scalar_t__ SizeOfPageHeaderData ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,unsigned int,unsigned int,...) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memmove (char*,char*,int) ;

bool
PageIndexTupleOverwrite(Page page, OffsetNumber offnum,
      Item newtup, Size newsize)
{
 PageHeader phdr = (PageHeader) page;
 ItemId tupid;
 int oldsize;
 unsigned offset;
 Size alignednewsize;
 int size_diff;
 int itemcount;




 if (phdr->pd_lower < SizeOfPageHeaderData ||
  phdr->pd_lower > phdr->pd_upper ||
  phdr->pd_upper > phdr->pd_special ||
  phdr->pd_special > BLCKSZ ||
  phdr->pd_special != MAXALIGN(phdr->pd_special))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted page pointers: lower = %u, upper = %u, special = %u",
      phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));

 itemcount = PageGetMaxOffsetNumber(page);
 if ((int) offnum <= 0 || (int) offnum > itemcount)
  elog(ERROR, "invalid index offnum: %u", offnum);

 tupid = PageGetItemId(page, offnum);
 Assert(ItemIdHasStorage(tupid));
 oldsize = ItemIdGetLength(tupid);
 offset = ItemIdGetOffset(tupid);

 if (offset < phdr->pd_upper || (offset + oldsize) > phdr->pd_special ||
  offset != MAXALIGN(offset))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted line pointer: offset = %u, size = %u",
      offset, (unsigned int) oldsize)));




 oldsize = MAXALIGN(oldsize);
 alignednewsize = MAXALIGN(newsize);
 if (alignednewsize > oldsize + (phdr->pd_upper - phdr->pd_lower))
  return 0;
 size_diff = oldsize - (int) alignednewsize;
 if (size_diff != 0)
 {
  char *addr = (char *) page + phdr->pd_upper;
  int i;


  memmove(addr + size_diff, addr, offset - phdr->pd_upper);


  phdr->pd_upper += size_diff;


  for (i = FirstOffsetNumber; i <= itemcount; i++)
  {
   ItemId ii = PageGetItemId(phdr, i);


   if (ItemIdHasStorage(ii) && ItemIdGetOffset(ii) <= offset)
    ii->lp_off += size_diff;
  }
 }


 ItemIdSetNormal(tupid, offset + size_diff, newsize);


 memcpy(PageGetItem(page, tupid), newtup, newsize);

 return 1;
}
