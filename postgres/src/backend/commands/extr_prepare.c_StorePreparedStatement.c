
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int from_sql; int prepare_time; int * plansource; } ;
typedef TYPE_1__ PreparedStatement ;
typedef int CachedPlanSource ;


 int ERRCODE_DUPLICATE_PSTATEMENT ;
 int ERROR ;
 int GetCurrentStatementStartTimestamp () ;
 int HASH_ENTER ;
 int InitQueryHashTable () ;
 int SaveCachedPlan (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ hash_search (int ,char const*,int ,int*) ;
 int prepared_queries ;

void
StorePreparedStatement(const char *stmt_name,
        CachedPlanSource *plansource,
        bool from_sql)
{
 PreparedStatement *entry;
 TimestampTz cur_ts = GetCurrentStatementStartTimestamp();
 bool found;


 if (!prepared_queries)
  InitQueryHashTable();


 entry = (PreparedStatement *) hash_search(prepared_queries,
             stmt_name,
             HASH_ENTER,
             &found);


 if (found)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_PSTATEMENT),
     errmsg("prepared statement \"%s\" already exists",
      stmt_name)));


 entry->plansource = plansource;
 entry->from_sql = from_sql;
 entry->prepare_time = cur_ts;


 SaveCachedPlan(plansource);
}
