
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncFlags; } ;
typedef int Parse ;
typedef TYPE_1__ NameContext ;


 int NC_IdxExpr ;
 int NC_IsCheck ;
 int NC_PartIdx ;
 int assert (int) ;
 int sqlite3ErrorMsg (int *,char*,char const*,char const*) ;

__attribute__((used)) static void notValid(
  Parse *pParse,
  NameContext *pNC,
  const char *zMsg,
  int validMask
){
  assert( (validMask&~(NC_IsCheck|NC_PartIdx|NC_IdxExpr))==0 );
  if( (pNC->ncFlags & validMask)!=0 ){
    const char *zIn = "partial index WHERE clauses";
    if( pNC->ncFlags & NC_IdxExpr ) zIn = "index expressions";

    else if( pNC->ncFlags & NC_IsCheck ) zIn = "CHECK constraints";

    sqlite3ErrorMsg(pParse, "%s prohibited in %s", zMsg, zIn);
  }
}
