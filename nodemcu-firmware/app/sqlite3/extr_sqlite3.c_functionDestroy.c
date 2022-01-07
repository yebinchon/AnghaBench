
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {TYPE_2__* pDestructor; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_7__ {scalar_t__ nRef; int pUserData; int (* xDestroy ) (int ) ;} ;
typedef TYPE_2__ FuncDestructor ;
typedef TYPE_3__ FuncDef ;


 int sqlite3DbFree (int *,TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void functionDestroy(sqlite3 *db, FuncDef *p){
  FuncDestructor *pDestructor = p->u.pDestructor;
  if( pDestructor ){
    pDestructor->nRef--;
    if( pDestructor->nRef==0 ){
      pDestructor->xDestroy(pDestructor->pUserData);
      sqlite3DbFree(db, pDestructor);
    }
  }
}
