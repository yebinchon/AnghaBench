
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3_create_collation_v2 (int *,char const*,int,void*,int (*) (void*,int,void const*,int,void const*),int ) ;

int sqlite3_create_collation(
  sqlite3* db,
  const char *zName,
  int enc,
  void* pCtx,
  int(*xCompare)(void*,int,const void*,int,const void*)
){
  return sqlite3_create_collation_v2(db, zName, enc, pCtx, xCompare, 0);
}
