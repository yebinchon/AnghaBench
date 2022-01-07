
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zName; } ;
typedef TYPE_1__ Table ;
struct TYPE_11__ {char* zName; } ;
struct TYPE_10__ {int explain; int iSelectId; int pVdbe; int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 int IsPrimaryKeyIndex (TYPE_3__*) ;
 int OP_Explain ;
 int P4_DYNAMIC ;
 char* sqlite3MPrintf (int ,char*,int ,char*,char*) ;
 int sqlite3VdbeAddOp4 (int ,int ,int ,int ,int ,char*,int ) ;

__attribute__((used)) static void explainSimpleCount(
  Parse *pParse,
  Table *pTab,
  Index *pIdx
){
  if( pParse->explain==2 ){
    int bCover = (pIdx!=0 && (HasRowid(pTab) || !IsPrimaryKeyIndex(pIdx)));
    char *zEqp = sqlite3MPrintf(pParse->db, "SCAN TABLE %s%s%s",
        pTab->zName,
        bCover ? " USING COVERING INDEX " : "",
        bCover ? pIdx->zName : ""
    );
    sqlite3VdbeAddOp4(
        pParse->pVdbe, OP_Explain, pParse->iSelectId, 0, 0, zEqp, P4_DYNAMIC
    );
  }
}
