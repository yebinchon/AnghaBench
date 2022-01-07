
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;


 int AccessShareLock ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 int MAIN_FORKNUM ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int RelationGetRelationName (TYPE_1__*) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int ShareLock ;
 int _bt_heapkeyspace (TYPE_1__*) ;
 int bt_check_every_level (TYPE_1__*,TYPE_1__*,int,int,int,int) ;
 int btree_index_checkable (TYPE_1__*) ;
 scalar_t__ btree_index_mainfork_expected (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int index_close (TYPE_1__*,int ) ;
 TYPE_1__* index_open (scalar_t__,int ) ;
 int smgrexists (int ,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (scalar_t__,int ) ;

__attribute__((used)) static void
bt_index_check_internal(Oid indrelid, bool parentcheck, bool heapallindexed,
      bool rootdescend)
{
 Oid heapid;
 Relation indrel;
 Relation heaprel;
 LOCKMODE lockmode;

 if (parentcheck)
  lockmode = ShareLock;
 else
  lockmode = AccessShareLock;
 heapid = IndexGetRelation(indrelid, 1);
 if (OidIsValid(heapid))
  heaprel = table_open(heapid, lockmode);
 else
  heaprel = ((void*)0);
 indrel = index_open(indrelid, lockmode);






 if (heaprel == ((void*)0) || heapid != IndexGetRelation(indrelid, 0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("could not open parent table of index %s",
      RelationGetRelationName(indrel))));


 btree_index_checkable(indrel);

 if (btree_index_mainfork_expected(indrel))
 {
  bool heapkeyspace;

  RelationOpenSmgr(indrel);
  if (!smgrexists(indrel->rd_smgr, MAIN_FORKNUM))
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("index \"%s\" lacks a main relation fork",
       RelationGetRelationName(indrel))));


  heapkeyspace = _bt_heapkeyspace(indrel);
  bt_check_every_level(indrel, heaprel, heapkeyspace, parentcheck,
        heapallindexed, rootdescend);
 }






 index_close(indrel, lockmode);
 if (heaprel)
  table_close(heaprel, lockmode);
}
