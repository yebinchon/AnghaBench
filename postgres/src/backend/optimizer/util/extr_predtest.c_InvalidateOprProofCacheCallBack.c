
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int have_implic; int have_refute; } ;
typedef TYPE_1__ OprProofCacheEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int Assert (int ) ;
 int * OprProofCacheHash ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
InvalidateOprProofCacheCallBack(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 OprProofCacheEntry *hentry;

 Assert(OprProofCacheHash != ((void*)0));


 hash_seq_init(&status, OprProofCacheHash);

 while ((hentry = (OprProofCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  hentry->have_implic = 0;
  hentry->have_refute = 0;
 }
}
