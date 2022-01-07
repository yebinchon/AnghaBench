
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int free_space; } ;
typedef TYPE_1__ pgstattuple_type ;
struct TYPE_6__ {int hasho_flag; } ;
typedef int Relation ;
typedef int Page ;
typedef int HashPageOpaqueData ;
typedef TYPE_2__* HashPageOpaque ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 int HASH_READ ;




 int LH_PAGE_TYPE ;

 scalar_t__ MAXALIGN (int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ PageGetSpecialSize (int ) ;
 int _hash_getbuf_with_strategy (int ,int ,int ,int ,int ) ;
 int _hash_relbuf (int ,int ) ;
 int pgstat_index_page (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
pgstat_hash_page(pgstattuple_type *stat, Relation rel, BlockNumber blkno,
     BufferAccessStrategy bstrategy)
{
 Buffer buf;
 Page page;

 buf = _hash_getbuf_with_strategy(rel, blkno, HASH_READ, 0, bstrategy);
 page = BufferGetPage(buf);

 if (PageGetSpecialSize(page) == MAXALIGN(sizeof(HashPageOpaqueData)))
 {
  HashPageOpaque opaque;

  opaque = (HashPageOpaque) PageGetSpecialPointer(page);
  switch (opaque->hasho_flag & LH_PAGE_TYPE)
  {
   case 128:
    stat->free_space += BLCKSZ;
    break;
   case 131:
   case 129:
    pgstat_index_page(stat, page, FirstOffsetNumber,
          PageGetMaxOffsetNumber(page));
    break;
   case 132:
   case 130:
   default:
    break;
  }
 }
 else
 {

 }

 _hash_relbuf(rel, buf);
}
