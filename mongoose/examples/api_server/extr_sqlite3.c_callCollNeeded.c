
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_9__ {int pCollNeededArg; int (* xCollNeeded16 ) (int ,TYPE_1__*,int,char const*) ;int (* xCollNeeded ) (int ,TYPE_1__*,int,char*) ;} ;
typedef TYPE_1__ sqlite3 ;


 scalar_t__ ENC (TYPE_1__*) ;
 int SQLITE_STATIC ;
 int SQLITE_UTF16NATIVE ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3DbFree (TYPE_1__*,char*) ;
 char* sqlite3DbStrDup (TYPE_1__*,char const*) ;
 int sqlite3ValueFree (int *) ;
 int * sqlite3ValueNew (TYPE_1__*) ;
 int sqlite3ValueSetStr (int *,int,char const*,int ,int ) ;
 char* sqlite3ValueText (int *,int ) ;
 int stub1 (int ,TYPE_1__*,int,char*) ;
 int stub2 (int ,TYPE_1__*,int,char const*) ;

__attribute__((used)) static void callCollNeeded(sqlite3 *db, int enc, const char *zName){
  assert( !db->xCollNeeded || !db->xCollNeeded16 );
  if( db->xCollNeeded ){
    char *zExternal = sqlite3DbStrDup(db, zName);
    if( !zExternal ) return;
    db->xCollNeeded(db->pCollNeededArg, db, enc, zExternal);
    sqlite3DbFree(db, zExternal);
  }

  if( db->xCollNeeded16 ){
    char const *zExternal;
    sqlite3_value *pTmp = sqlite3ValueNew(db);
    sqlite3ValueSetStr(pTmp, -1, zName, SQLITE_UTF8, SQLITE_STATIC);
    zExternal = sqlite3ValueText(pTmp, SQLITE_UTF16NATIVE);
    if( zExternal ){
      db->xCollNeeded16(db->pCollNeededArg, db, (int)ENC(db), zExternal);
    }
    sqlite3ValueFree(pTmp);
  }

}
