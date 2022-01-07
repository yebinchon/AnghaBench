
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;


 void SQLITE_DYNAMIC (void*) ;
 int assert (int) ;
 int bindText (int *,int,void const*,int,void (*) (void*),int ) ;
 int invokeValueDestructor (void const*,void (*) (void*),int ) ;

int sqlite3_bind_blob64(
  sqlite3_stmt *pStmt,
  int i,
  const void *zData,
  sqlite3_uint64 nData,
  void (*xDel)(void*)
){
  assert( xDel!=SQLITE_DYNAMIC );
  if( nData>0x7fffffff ){
    return invokeValueDestructor(zData, xDel, 0);
  }else{
    return bindText(pStmt, i, zData, (int)nData, xDel, 0);
  }
}
