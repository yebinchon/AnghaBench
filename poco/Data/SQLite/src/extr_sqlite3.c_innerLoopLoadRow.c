
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int db; } ;
struct TYPE_9__ {scalar_t__ pExtra; int regExtraResult; int ecelFlags; int regResult; } ;
struct TYPE_8__ {scalar_t__ pEList; } ;
typedef TYPE_1__ Select ;
typedef TYPE_2__ RowLoadInfo ;
typedef TYPE_3__ Parse ;


 int sqlite3ExprCodeExprList (TYPE_3__*,scalar_t__,int ,int ,int ) ;
 int sqlite3ExprListDelete (int ,scalar_t__) ;

__attribute__((used)) static void innerLoopLoadRow(
  Parse *pParse,
  Select *pSelect,
  RowLoadInfo *pInfo
){
  sqlite3ExprCodeExprList(pParse, pSelect->pEList, pInfo->regResult,
                          0, pInfo->ecelFlags);






}
