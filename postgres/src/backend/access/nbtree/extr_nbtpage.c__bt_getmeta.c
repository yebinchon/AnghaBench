
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ btm_magic; scalar_t__ btm_version; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BTPageOpaque ;
typedef TYPE_1__ BTMetaPageData ;


 TYPE_1__* BTPageGetMeta (int ) ;
 scalar_t__ BTREE_MAGIC ;
 scalar_t__ BTREE_MIN_VERSION ;
 scalar_t__ BTREE_VERSION ;
 int BufferGetPage (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int P_ISMETA (scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;

__attribute__((used)) static BTMetaPageData *
_bt_getmeta(Relation rel, Buffer metabuf)
{
 Page metapg;
 BTPageOpaque metaopaque;
 BTMetaPageData *metad;

 metapg = BufferGetPage(metabuf);
 metaopaque = (BTPageOpaque) PageGetSpecialPointer(metapg);
 metad = BTPageGetMeta(metapg);


 if (!P_ISMETA(metaopaque) ||
  metad->btm_magic != BTREE_MAGIC)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("index \"%s\" is not a btree",
      RelationGetRelationName(rel))));

 if (metad->btm_version < BTREE_MIN_VERSION ||
  metad->btm_version > BTREE_VERSION)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("version mismatch in index \"%s\": file version %d, "
      "current version %d, minimal supported version %d",
      RelationGetRelationName(rel),
      metad->btm_version, BTREE_VERSION, BTREE_MIN_VERSION)));

 return metad;
}
