
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ op; TYPE_1__* pLeft; } ;
struct TYPE_4__ {scalar_t__ op; } ;
typedef TYPE_2__ Expr ;


 scalar_t__ TK_COLLATE ;
 void* TK_ID ;
 scalar_t__ TK_STRING ;

__attribute__((used)) static void sqlite3StringToId(Expr *p){
  if( p->op==TK_STRING ){
    p->op = TK_ID;
  }else if( p->op==TK_COLLATE && p->pLeft->op==TK_STRING ){
    p->pLeft->op = TK_ID;
  }
}
