
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_UTF8 ;
 int bindText (int *,int,char const*,int,void (*) (void*),int ) ;

int sqlite3_bind_text(
  sqlite3_stmt *pStmt,
  int i,
  const char *zData,
  int nData,
  void (*xDel)(void*)
){
  return bindText(pStmt, i, zData, nData, xDel, SQLITE_UTF8);
}
