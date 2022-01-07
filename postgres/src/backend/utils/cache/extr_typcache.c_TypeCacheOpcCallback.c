
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {scalar_t__ flags; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int TypeCacheHash ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TypeCacheOpcCallback(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 TypeCacheEntry *typentry;


 hash_seq_init(&status, TypeCacheHash);
 while ((typentry = (TypeCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {

  typentry->flags = 0;
 }
}
