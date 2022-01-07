
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aOverflow; } ;
typedef TYPE_1__ BtCursor ;


 int assert (int ) ;
 int cursorHoldsMutex (TYPE_1__*) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void invalidateOverflowCache(BtCursor *pCur){
  assert( cursorHoldsMutex(pCur) );
  sqlite3_free(pCur->aOverflow);
  pCur->aOverflow = 0;
}
