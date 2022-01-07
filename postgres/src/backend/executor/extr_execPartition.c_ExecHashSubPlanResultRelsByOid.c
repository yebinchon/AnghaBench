
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_14__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_13__ {int mt_nplans; TYPE_2__* resultRelInfo; } ;
struct TYPE_12__ {int partition_root; int * subplan_resultrel_htab; } ;
struct TYPE_11__ {int ri_PartitionRoot; int ri_RelationDesc; } ;
struct TYPE_10__ {TYPE_2__* rri; } ;
typedef TYPE_1__ SubplanResultRelHashElem ;
typedef TYPE_2__ ResultRelInfo ;
typedef TYPE_3__ PartitionTupleRouting ;
typedef int Oid ;
typedef TYPE_4__ ModifyTableState ;
typedef int HTAB ;
typedef TYPE_5__ HASHCTL ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int RelationGetRelid (int ) ;
 int * hash_create (char*,int,TYPE_5__*,int) ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static void
ExecHashSubPlanResultRelsByOid(ModifyTableState *mtstate,
          PartitionTupleRouting *proute)
{
 HASHCTL ctl;
 HTAB *htab;
 int i;

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(SubplanResultRelHashElem);
 ctl.hcxt = CurrentMemoryContext;

 htab = hash_create("PartitionTupleRouting table", mtstate->mt_nplans,
        &ctl, HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
 proute->subplan_resultrel_htab = htab;


 for (i = 0; i < mtstate->mt_nplans; i++)
 {
  ResultRelInfo *rri = &mtstate->resultRelInfo[i];
  bool found;
  Oid partoid = RelationGetRelid(rri->ri_RelationDesc);
  SubplanResultRelHashElem *elem;

  elem = (SubplanResultRelHashElem *)
   hash_search(htab, &partoid, HASH_ENTER, &found);
  Assert(!found);
  elem->rri = rri;






  rri->ri_PartitionRoot = proute->partition_root;
 }
}
