
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int z; int n; } ;
typedef TYPE_3__ Token ;
struct TYPE_14__ {TYPE_2__* db; } ;
struct TYPE_11__ {scalar_t__ busy; } ;
struct TYPE_12__ {TYPE_1__ init; } ;
typedef TYPE_4__ Parse ;
typedef int ExprList ;


 int SQLITE_SO_UNDEFINED ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,int ,int ) ;
 int * sqlite3ExprListAppend (TYPE_4__*,int *,int ) ;
 int sqlite3ExprListSetName (TYPE_4__*,int *,TYPE_3__*,int) ;

__attribute__((used)) static ExprList *parserAddExprIdListTerm(
    Parse *pParse,
    ExprList *pPrior,
    Token *pIdToken,
    int hasCollate,
    int sortOrder
  ){
    ExprList *p = sqlite3ExprListAppend(pParse, pPrior, 0);
    if( (hasCollate || sortOrder!=SQLITE_SO_UNDEFINED)
        && pParse->db->init.busy==0
    ){
      sqlite3ErrorMsg(pParse, "syntax error after column name \"%.*s\"",
                         pIdToken->n, pIdToken->z);
    }
    sqlite3ExprListSetName(pParse, p, pIdToken, 1);
    return p;
  }
