
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_10__ {scalar_t__ btm_root; scalar_t__ btm_version; scalar_t__ btm_magic; scalar_t__ btm_fastroot; } ;
struct TYPE_9__ {int * rd_amcache; int rd_indexcxt; } ;
typedef TYPE_1__* Relation ;
typedef int Buffer ;
typedef TYPE_2__ BTMetaPageData ;


 int Assert (int) ;
 scalar_t__ BTREE_MAGIC ;
 int BTREE_METAPAGE ;
 scalar_t__ BTREE_MIN_VERSION ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 scalar_t__ BTREE_VERSION ;
 int BT_READ ;
 int * MemoryContextAlloc (int ,int) ;
 scalar_t__ P_NONE ;
 int _bt_getbuf (TYPE_1__*,int ,int ) ;
 TYPE_2__* _bt_getmeta (TYPE_1__*,int ) ;
 int _bt_relbuf (TYPE_1__*,int ) ;
 int memcpy (int *,TYPE_2__*,int) ;

bool
_bt_heapkeyspace(Relation rel)
{
 BTMetaPageData *metad;

 if (rel->rd_amcache == ((void*)0))
 {
  Buffer metabuf;

  metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_READ);
  metad = _bt_getmeta(rel, metabuf);






  if (metad->btm_root == P_NONE)
  {
   uint32 btm_version = metad->btm_version;

   _bt_relbuf(rel, metabuf);
   return btm_version > BTREE_NOVAC_VERSION;
  }
  rel->rd_amcache = MemoryContextAlloc(rel->rd_indexcxt,
            sizeof(BTMetaPageData));
  memcpy(rel->rd_amcache, metad, sizeof(BTMetaPageData));
  _bt_relbuf(rel, metabuf);
 }


 metad = (BTMetaPageData *) rel->rd_amcache;

 Assert(metad->btm_magic == BTREE_MAGIC);
 Assert(metad->btm_version >= BTREE_MIN_VERSION);
 Assert(metad->btm_version <= BTREE_VERSION);
 Assert(metad->btm_fastroot != P_NONE);

 return metad->btm_version > BTREE_NOVAC_VERSION;
}
