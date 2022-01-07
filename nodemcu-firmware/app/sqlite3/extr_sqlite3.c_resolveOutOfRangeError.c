
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Parse ;


 int sqlite3ErrorMsg (int *,char*,int,char const*,int) ;

__attribute__((used)) static void resolveOutOfRangeError(
  Parse *pParse,
  const char *zType,
  int i,
  int mx
){
  sqlite3ErrorMsg(pParse,
    "%r %s BY term out of range - should be "
    "between 1 and %d", i, zType, mx);
}
