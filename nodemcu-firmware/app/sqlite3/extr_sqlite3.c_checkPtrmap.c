
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int mallocFailed; int pBt; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ IntegrityCk ;


 int SQLITE_IOERR_NOMEM ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int checkAppendMsg (TYPE_1__*,char*,scalar_t__,...) ;
 int ptrmapGet (int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void checkPtrmap(
  IntegrityCk *pCheck,
  Pgno iChild,
  u8 eType,
  Pgno iParent
){
  int rc;
  u8 ePtrmapType;
  Pgno iPtrmapParent;

  rc = ptrmapGet(pCheck->pBt, iChild, &ePtrmapType, &iPtrmapParent);
  if( rc!=SQLITE_OK ){
    if( rc==SQLITE_NOMEM || rc==SQLITE_IOERR_NOMEM ) pCheck->mallocFailed = 1;
    checkAppendMsg(pCheck, "Failed to read ptrmap key=%d", iChild);
    return;
  }

  if( ePtrmapType!=eType || iPtrmapParent!=iParent ){
    checkAppendMsg(pCheck,
      "Bad ptr map entry key=%d expected=(%d,%d) got=(%d,%d)",
      iChild, eType, iParent, ePtrmapType, iPtrmapParent);
  }
}
