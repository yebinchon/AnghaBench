
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogicalDecodingContext ;


 int * RelationSyncCache ;
 int hash_destroy (int *) ;

__attribute__((used)) static void
pgoutput_shutdown(LogicalDecodingContext *ctx)
{
 if (RelationSyncCache)
 {
  hash_destroy(RelationSyncCache);
  RelationSyncCache = ((void*)0);
 }
}
