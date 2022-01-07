
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ server_hashvalue; scalar_t__ mapping_hashvalue; int invalidated; int * conn; } ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;
typedef TYPE_1__ ConnCacheEntry ;


 int Assert (int) ;
 int ConnectionHash ;
 int FOREIGNSERVEROID ;
 int USERMAPPINGOID ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
pgfdw_inval_callback(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS scan;
 ConnCacheEntry *entry;

 Assert(cacheid == FOREIGNSERVEROID || cacheid == USERMAPPINGOID);


 hash_seq_init(&scan, ConnectionHash);
 while ((entry = (ConnCacheEntry *) hash_seq_search(&scan)))
 {

  if (entry->conn == ((void*)0))
   continue;


  if (hashvalue == 0 ||
   (cacheid == FOREIGNSERVEROID &&
    entry->server_hashvalue == hashvalue) ||
   (cacheid == USERMAPPINGOID &&
    entry->mapping_hashvalue == hashvalue))
   entry->invalidated = 1;
 }
}
