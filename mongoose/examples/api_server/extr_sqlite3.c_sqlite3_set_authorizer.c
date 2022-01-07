
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xAuth ) (void*,int,char const*,char const*,char const*,char const*) ;int mutex; void* pAuthArg; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_OK ;
 int sqlite3ExpirePreparedStatements (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_set_authorizer(
  sqlite3 *db,
  int (*xAuth)(void*,int,const char*,const char*,const char*,const char*),
  void *pArg
){
  sqlite3_mutex_enter(db->mutex);
  db->xAuth = xAuth;
  db->pAuthArg = pArg;
  sqlite3ExpirePreparedStatements(db);
  sqlite3_mutex_leave(db->mutex);
  return SQLITE_OK;
}
