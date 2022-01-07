
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt_name; int plansource; } ;
typedef TYPE_1__ PreparedStatement ;


 int DropCachedPlan (int ) ;
 TYPE_1__* FetchPreparedStatement (char const*,int) ;
 int HASH_REMOVE ;
 int hash_search (int ,int ,int ,int *) ;
 int prepared_queries ;

void
DropPreparedStatement(const char *stmt_name, bool showError)
{
 PreparedStatement *entry;


 entry = FetchPreparedStatement(stmt_name, showError);

 if (entry)
 {

  DropCachedPlan(entry->plansource);


  hash_search(prepared_queries, entry->stmt_name, HASH_REMOVE, ((void*)0));
 }
}
