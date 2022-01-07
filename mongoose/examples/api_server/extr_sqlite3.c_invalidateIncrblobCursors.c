
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_7__ {scalar_t__ nKey; } ;
struct TYPE_10__ {int eState; TYPE_1__ info; scalar_t__ isIncrblobHandle; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {TYPE_4__* pCursor; } ;
struct TYPE_8__ {TYPE_3__* pBt; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;
typedef TYPE_4__ BtCursor ;


 int CURSOR_INVALID ;
 int assert (int ) ;
 int sqlite3BtreeHoldsMutex (TYPE_2__*) ;

__attribute__((used)) static void invalidateIncrblobCursors(
  Btree *pBtree,
  i64 iRow,
  int isClearTable
){
  BtCursor *p;
  BtShared *pBt = pBtree->pBt;
  assert( sqlite3BtreeHoldsMutex(pBtree) );
  for(p=pBt->pCursor; p; p=p->pNext){
    if( p->isIncrblobHandle && (isClearTable || p->info.nKey==iRow) ){
      p->eState = CURSOR_INVALID;
    }
  }
}
