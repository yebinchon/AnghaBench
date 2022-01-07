
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int columnMallocFailure (int *) ;
 int columnMem (int *,int) ;
 void* sqlite3_value_blob (int ) ;

const void *sqlite3_column_blob(sqlite3_stmt *pStmt, int i){
  const void *val;
  val = sqlite3_value_blob( columnMem(pStmt,i) );




  columnMallocFailure(pStmt);
  return val;
}
