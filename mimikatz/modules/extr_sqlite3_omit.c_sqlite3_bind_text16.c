
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_UTF16NATIVE ;
 int bindText (int *,int,void const*,int,void (*) (void*),int ) ;

int sqlite3_bind_text16(
  sqlite3_stmt *pStmt,
  int i,
  const void *zData,
  int nData,
  void (*xDel)(void*)
){
  return bindText(pStmt, i, zData, nData, xDel, SQLITE_UTF16NATIVE);
}
