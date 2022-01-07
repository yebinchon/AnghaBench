
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reldesc; } ;
typedef TYPE_1__ RelIdCacheEnt ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int ) ;
 int AtEOXact_cleanup (int ,int) ;
 int * EOXactTupleDescArray ;
 scalar_t__ EOXactTupleDescArrayLen ;
 int FreeTupleDesc (int ) ;
 int HASH_FIND ;
 int NextEOXactTupleDescNum ;
 int RelationIdCache ;
 int * eoxact_list ;
 int eoxact_list_len ;
 int eoxact_list_overflowed ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int pfree (int *) ;

void
AtEOXact_RelationCache(bool isCommit)
{
 HASH_SEQ_STATUS status;
 RelIdCacheEnt *idhentry;
 int i;
 if (eoxact_list_overflowed)
 {
  hash_seq_init(&status, RelationIdCache);
  while ((idhentry = (RelIdCacheEnt *) hash_seq_search(&status)) != ((void*)0))
  {
   AtEOXact_cleanup(idhentry->reldesc, isCommit);
  }
 }
 else
 {
  for (i = 0; i < eoxact_list_len; i++)
  {
   idhentry = (RelIdCacheEnt *) hash_search(RelationIdCache,
              (void *) &eoxact_list[i],
              HASH_FIND,
              ((void*)0));
   if (idhentry != ((void*)0))
    AtEOXact_cleanup(idhentry->reldesc, isCommit);
  }
 }

 if (EOXactTupleDescArrayLen > 0)
 {
  Assert(EOXactTupleDescArray != ((void*)0));
  for (i = 0; i < NextEOXactTupleDescNum; i++)
   FreeTupleDesc(EOXactTupleDescArray[i]);
  pfree(EOXactTupleDescArray);
  EOXactTupleDescArray = ((void*)0);
 }


 eoxact_list_len = 0;
 eoxact_list_overflowed = 0;
 NextEOXactTupleDescNum = 0;
 EOXactTupleDescArrayLen = 0;
}
