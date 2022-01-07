
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {char* stmtID; int execs; } ;


 int AddStmtToCache (int,char*,char const*,int const,char const*) ;
 int ECPGprepare (int,char const*,int ,char*,char const*) ;
 int STMTID_SIZE ;
 int SearchStmtCache (char const*) ;
 struct prepared_statement* ecpg_find_prepared_statement (char*,struct connection*,int *) ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_log (char*,int,...) ;
 char* ecpg_strdup (char*,int) ;
 int nextStmtID ;
 int prepare_common (int,struct connection*,char*,char const*) ;
 int sprintf (char*,char*,int ) ;
 TYPE_1__* stmtCacheEntries ;

bool
ecpg_auto_prepare(int lineno, const char *connection_name, const int compat, char **name, const char *query)
{
 int entNo;


 entNo = SearchStmtCache(query);


 if (entNo)
 {
  char *stmtID;
  struct connection *con;
  struct prepared_statement *prep;

  ecpg_log("ecpg_auto_prepare on line %d: statement found in cache; entry %d\n", lineno, entNo);

  stmtID = stmtCacheEntries[entNo].stmtID;

  con = ecpg_get_connection(connection_name);
  prep = ecpg_find_prepared_statement(stmtID, con, ((void*)0));

  if (!prep && !prepare_common(lineno, con, stmtID, query))
   return 0;

  *name = ecpg_strdup(stmtID, lineno);
 }
 else
 {
  char stmtID[STMTID_SIZE];

  ecpg_log("ecpg_auto_prepare on line %d: statement not in cache; inserting\n", lineno);


  sprintf(stmtID, "ecpg%d", nextStmtID++);

  if (!ECPGprepare(lineno, connection_name, 0, stmtID, query))
   return 0;

  entNo = AddStmtToCache(lineno, stmtID, connection_name, compat, query);
  if (entNo < 0)
   return 0;

  *name = ecpg_strdup(stmtID, lineno);
 }


 stmtCacheEntries[entNo].execs++;

 return 1;
}
