
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pTmpSpace; int pageSize; } ;
typedef TYPE_1__ BtShared ;


 int memset (scalar_t__,int ,int) ;
 scalar_t__ sqlite3PageMalloc (int ) ;

__attribute__((used)) static void allocateTempSpace(BtShared *pBt){
  if( !pBt->pTmpSpace ){
    pBt->pTmpSpace = sqlite3PageMalloc( pBt->pageSize );
    if( pBt->pTmpSpace ){
      memset(pBt->pTmpSpace, 0, 8);
      pBt->pTmpSpace += 4;
    }
  }
}
