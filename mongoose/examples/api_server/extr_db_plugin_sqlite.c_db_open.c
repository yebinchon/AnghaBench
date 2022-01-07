
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void sqlite3 ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_FULLMUTEX ;
 int SQLITE_OPEN_READWRITE ;
 int sqlite3_exec (void*,char*,int ,int ,int ) ;
 scalar_t__ sqlite3_open_v2 (char const*,void**,int,int *) ;

void *db_open(const char *db_path) {
  sqlite3 *db = ((void*)0);
  if (sqlite3_open_v2(db_path, &db, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
                                        SQLITE_OPEN_FULLMUTEX,
                      ((void*)0)) == SQLITE_OK) {
    sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS kv(key PRIMARY KEY, val);", 0,
                 0, 0);
  }
  return db;
}
