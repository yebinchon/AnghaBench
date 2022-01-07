
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VdbeCursor ;
struct TYPE_4__ {int nCursor; int ** apCsr; } ;
typedef TYPE_1__ Vdbe ;


 int sqlite3VdbeFreeCursor (TYPE_1__*,int *) ;

__attribute__((used)) static void closeCursorsInFrame(Vdbe *p){
  if( p->apCsr ){
    int i;
    for(i=0; i<p->nCursor; i++){
      VdbeCursor *pC = p->apCsr[i];
      if( pC ){
        sqlite3VdbeFreeCursor(p, pC);
        p->apCsr[i] = 0;
      }
    }
  }
}
