
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_6__ {scalar_t__ nChar; scalar_t__ nAlloc; scalar_t__ accError; scalar_t__ mxAlloc; char* zText; int printfFlags; scalar_t__ db; } ;
typedef TYPE_1__ StrAccum ;


 scalar_t__ SQLITE_NOMEM ;
 int SQLITE_PRINTF_MALLOCED ;
 scalar_t__ SQLITE_TOOBIG ;
 int assert (int) ;
 scalar_t__ isMalloced (TYPE_1__*) ;
 int memcpy (char*,char*,scalar_t__) ;
 int setStrAccumError (TYPE_1__*,scalar_t__) ;
 int sqlite3DbMallocSize (scalar_t__,char*) ;
 char* sqlite3DbRealloc (scalar_t__,char*,int) ;
 char* sqlite3_realloc64 (char*,int) ;
 int sqlite3_str_reset (TYPE_1__*) ;
 int testcase (int) ;

__attribute__((used)) static int sqlite3StrAccumEnlarge(StrAccum *p, int N){
  char *zNew;
  assert( p->nChar+(i64)N >= p->nAlloc );
  if( p->accError ){
    testcase(p->accError==SQLITE_TOOBIG);
    testcase(p->accError==SQLITE_NOMEM);
    return 0;
  }
  if( p->mxAlloc==0 ){
    N = p->nAlloc - p->nChar - 1;
    setStrAccumError(p, SQLITE_TOOBIG);
    return N;
  }else{
    char *zOld = isMalloced(p) ? p->zText : 0;
    i64 szNew = p->nChar;
    szNew += N + 1;
    if( szNew+p->nChar<=p->mxAlloc ){


      szNew += p->nChar;
    }
    if( szNew > p->mxAlloc ){
      sqlite3_str_reset(p);
      setStrAccumError(p, SQLITE_TOOBIG);
      return 0;
    }else{
      p->nAlloc = (int)szNew;
    }
    if( p->db ){
      zNew = sqlite3DbRealloc(p->db, zOld, p->nAlloc);
    }else{
      zNew = sqlite3_realloc64(zOld, p->nAlloc);
    }
    if( zNew ){
      assert( p->zText!=0 || p->nChar==0 );
      if( !isMalloced(p) && p->nChar>0 ) memcpy(zNew, p->zText, p->nChar);
      p->zText = zNew;
      p->nAlloc = sqlite3DbMallocSize(p->db, zNew);
      p->printfFlags |= SQLITE_PRINTF_MALLOCED;
    }else{
      sqlite3_str_reset(p);
      setStrAccumError(p, SQLITE_NOMEM);
      return 0;
    }
  }
  return N;
}
