
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_file ;
typedef int i64 ;
struct TYPE_4__ {int iBufEnd; int iBufStart; int iWriteOff; int nBuffer; int * pFd; int eFWErr; int * aBuffer; } ;
typedef TYPE_1__ PmaWriter ;


 int SQLITE_NOMEM_BKPT ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3Malloc (int) ;

__attribute__((used)) static void vdbePmaWriterInit(
  sqlite3_file *pFd,
  PmaWriter *p,
  int nBuf,
  i64 iStart
){
  memset(p, 0, sizeof(PmaWriter));
  p->aBuffer = (u8*)sqlite3Malloc(nBuf);
  if( !p->aBuffer ){
    p->eFWErr = SQLITE_NOMEM_BKPT;
  }else{
    p->iBufEnd = p->iBufStart = (iStart % nBuf);
    p->iWriteOff = iStart - p->iBufStart;
    p->nBuffer = nBuf;
    p->pFd = pFd;
  }
}
