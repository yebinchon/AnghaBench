
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reldesc; } ;
typedef int SubTransactionId ;
typedef TYPE_1__ RelIdCacheEnt ;
typedef int HASH_SEQ_STATUS ;


 int AtEOSubXact_cleanup (int ,int,int ,int ) ;
 int HASH_FIND ;
 int RelationIdCache ;
 int * eoxact_list ;
 int eoxact_list_len ;
 scalar_t__ eoxact_list_overflowed ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
AtEOSubXact_RelationCache(bool isCommit, SubTransactionId mySubid,
        SubTransactionId parentSubid)
{
 HASH_SEQ_STATUS status;
 RelIdCacheEnt *idhentry;
 int i;






 if (eoxact_list_overflowed)
 {
  hash_seq_init(&status, RelationIdCache);
  while ((idhentry = (RelIdCacheEnt *) hash_seq_search(&status)) != ((void*)0))
  {
   AtEOSubXact_cleanup(idhentry->reldesc, isCommit,
        mySubid, parentSubid);
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
    AtEOSubXact_cleanup(idhentry->reldesc, isCommit,
         mySubid, parentSubid);
  }
 }


}
