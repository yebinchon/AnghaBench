
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ FuncDef ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 int SQLITE_UTF8 ;
 TYPE_1__* sqlite3FindFunction (int *,char const*,int ,int,int ,int ) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static void setLikeOptFlag(sqlite3 *db, const char *zName, u8 flagVal){
  FuncDef *pDef;
  pDef = sqlite3FindFunction(db, zName, sqlite3Strlen30(zName),
                             2, SQLITE_UTF8, 0);
  if( ALWAYS(pDef) ){
    pDef->flags = flagVal;
  }
}
