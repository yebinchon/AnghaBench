
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_3__ {int nModuleArg; char** azModuleArg; } ;
typedef TYPE_1__ Table ;


 int sqlite3DbFree (int *,char*) ;
 char** sqlite3DbRealloc (int *,char**,int) ;

__attribute__((used)) static void addModuleArgument(sqlite3 *db, Table *pTable, char *zArg){
  int nBytes = sizeof(char *)*(2+pTable->nModuleArg);
  char **azModuleArg;
  azModuleArg = sqlite3DbRealloc(db, pTable->azModuleArg, nBytes);
  if( azModuleArg==0 ){
    sqlite3DbFree(db, zArg);
  }else{
    int i = pTable->nModuleArg++;
    azModuleArg[i] = zArg;
    azModuleArg[i+1] = 0;
    pTable->azModuleArg = azModuleArg;
  }
}
