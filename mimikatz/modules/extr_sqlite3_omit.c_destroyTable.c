
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tnum; scalar_t__ pSchema; TYPE_3__* pIndex; } ;
typedef TYPE_1__ Table ;
struct TYPE_11__ {int nDb; } ;
struct TYPE_10__ {int tnum; scalar_t__ pSchema; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {TYPE_4__* db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 int assert (int) ;
 int destroyRootPage (TYPE_2__*,int,int) ;
 int sqlite3SchemaToIndex (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void destroyTable(Parse *pParse, Table *pTab){
  int iTab = pTab->tnum;
  int iDestroyed = 0;

  while( 1 ){
    Index *pIdx;
    int iLargest = 0;

    if( iDestroyed==0 || iTab<iDestroyed ){
      iLargest = iTab;
    }
    for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
      int iIdx = pIdx->tnum;
      assert( pIdx->pSchema==pTab->pSchema );
      if( (iDestroyed==0 || (iIdx<iDestroyed)) && iIdx>iLargest ){
        iLargest = iIdx;
      }
    }
    if( iLargest==0 ){
      return;
    }else{
      int iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
      assert( iDb>=0 && iDb<pParse->db->nDb );
      destroyRootPage(pParse, iLargest, iDb);
      iDestroyed = iLargest;
    }
  }
}
