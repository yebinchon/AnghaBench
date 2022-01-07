
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt_name; int plansource; } ;
typedef TYPE_1__ PreparedStatement ;
typedef int HASH_SEQ_STATUS ;


 int DropCachedPlan (int ) ;
 int HASH_REMOVE ;
 int hash_search (int ,int ,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;
 int prepared_queries ;

void
DropAllPreparedStatements(void)
{
 HASH_SEQ_STATUS seq;
 PreparedStatement *entry;


 if (!prepared_queries)
  return;


 hash_seq_init(&seq, prepared_queries);
 while ((entry = hash_seq_search(&seq)) != ((void*)0))
 {

  DropCachedPlan(entry->plansource);


  hash_search(prepared_queries, entry->stmt_name, HASH_REMOVE, ((void*)0));
 }
}
