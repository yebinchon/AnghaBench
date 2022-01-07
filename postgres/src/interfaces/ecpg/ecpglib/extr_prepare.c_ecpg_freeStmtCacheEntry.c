
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {char* stmtID; scalar_t__ ecpgQuery; int connection; } ;
typedef TYPE_1__ stmtCacheEntry ;


 int deallocate_one (int,int,struct connection*,struct prepared_statement*,struct prepared_statement*) ;
 struct prepared_statement* ecpg_find_prepared_statement (char*,struct connection*,struct prepared_statement**) ;
 int ecpg_free (scalar_t__) ;
 struct connection* ecpg_get_connection (int ) ;
 TYPE_1__* stmtCacheEntries ;

__attribute__((used)) static int
ecpg_freeStmtCacheEntry(int lineno, int compat,
      int entNo)
{
 stmtCacheEntry *entry;
 struct connection *con;
 struct prepared_statement *this,
      *prev;


 if (stmtCacheEntries == ((void*)0))
  return -1;

 entry = &stmtCacheEntries[entNo];
 if (!entry->stmtID[0])
  return 0;

 con = ecpg_get_connection(entry->connection);


 this = ecpg_find_prepared_statement(entry->stmtID, con, &prev);
 if (this && !deallocate_one(lineno, compat, con, prev, this))
  return -1;

 entry->stmtID[0] = '\0';


 if (entry->ecpgQuery)
 {
  ecpg_free(entry->ecpgQuery);
  entry->ecpgQuery = 0;
 }

 return entNo;
}
