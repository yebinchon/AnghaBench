
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {int bMalloced; int bDisable; TYPE_2__* pEnd; TYPE_2__* pStart; TYPE_2__* pFree; scalar_t__ sz; scalar_t__ nOut; } ;
struct TYPE_7__ {TYPE_1__ lookaside; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ sqlite3 ;
typedef TYPE_2__ LookasideSlot ;


 int ROUNDDOWN8 (int) ;
 int SQLITE_BUSY ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 void* sqlite3Malloc (int) ;
 int sqlite3MallocSize (void*) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int setupLookaside(sqlite3 *db, void *pBuf, int sz, int cnt){

  void *pStart;
  if( db->lookaside.nOut ){
    return SQLITE_BUSY;
  }




  if( db->lookaside.bMalloced ){
    sqlite3_free(db->lookaside.pStart);
  }



  sz = ROUNDDOWN8(sz);
  if( sz<=(int)sizeof(LookasideSlot*) ) sz = 0;
  if( cnt<0 ) cnt = 0;
  if( sz==0 || cnt==0 ){
    sz = 0;
    pStart = 0;
  }else if( pBuf==0 ){
    sqlite3BeginBenignMalloc();
    pStart = sqlite3Malloc( sz*cnt );
    sqlite3EndBenignMalloc();
    if( pStart ) cnt = sqlite3MallocSize(pStart)/sz;
  }else{
    pStart = pBuf;
  }
  db->lookaside.pStart = pStart;
  db->lookaside.pFree = 0;
  db->lookaside.sz = (u16)sz;
  if( pStart ){
    int i;
    LookasideSlot *p;
    assert( sz > (int)sizeof(LookasideSlot*) );
    p = (LookasideSlot*)pStart;
    for(i=cnt-1; i>=0; i--){
      p->pNext = db->lookaside.pFree;
      db->lookaside.pFree = p;
      p = (LookasideSlot*)&((u8*)p)[sz];
    }
    db->lookaside.pEnd = p;
    db->lookaside.bDisable = 0;
    db->lookaside.bMalloced = pBuf==0 ?1:0;
  }else{
    db->lookaside.pStart = db;
    db->lookaside.pEnd = db;
    db->lookaside.bDisable = 1;
    db->lookaside.bMalloced = 0;
  }

  return SQLITE_OK;
}
