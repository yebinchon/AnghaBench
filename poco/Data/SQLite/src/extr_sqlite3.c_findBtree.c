
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int sParse ;
struct TYPE_14__ {int rc; char const* zErrMsg; TYPE_2__* db; } ;
struct TYPE_12__ {int * pBt; } ;
typedef TYPE_3__ Parse ;
typedef int Btree ;


 int SQLITE_ERROR ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3DbFree (TYPE_2__*,char const*) ;
 int sqlite3ErrorWithMsg (TYPE_2__*,int,char*,char const*) ;
 int sqlite3FindDbName (TYPE_2__*,char const*) ;
 scalar_t__ sqlite3OpenTempDatabase (TYPE_3__*) ;
 int sqlite3ParserReset (TYPE_3__*) ;

__attribute__((used)) static Btree *findBtree(sqlite3 *pErrorDb, sqlite3 *pDb, const char *zDb){
  int i = sqlite3FindDbName(pDb, zDb);

  if( i==1 ){
    Parse sParse;
    int rc = 0;
    memset(&sParse, 0, sizeof(sParse));
    sParse.db = pDb;
    if( sqlite3OpenTempDatabase(&sParse) ){
      sqlite3ErrorWithMsg(pErrorDb, sParse.rc, "%s", sParse.zErrMsg);
      rc = SQLITE_ERROR;
    }
    sqlite3DbFree(pErrorDb, sParse.zErrMsg);
    sqlite3ParserReset(&sParse);
    if( rc ){
      return 0;
    }
  }

  if( i<0 ){
    sqlite3ErrorWithMsg(pErrorDb, SQLITE_ERROR, "unknown database %s", zDb);
    return 0;
  }

  return pDb->aDb[i].pBt;
}
