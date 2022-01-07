
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_9__ {scalar_t__* aReadMark; scalar_t__ nBackfillAttempted; scalar_t__ nBackfill; } ;
typedef TYPE_2__ WalCkptInfo ;
struct TYPE_8__ {int * aSalt; scalar_t__ mxFrame; } ;
struct TYPE_10__ {TYPE_1__ hdr; int nCkpt; } ;
typedef TYPE_3__ Wal ;


 scalar_t__ READMARK_NOT_USED ;
 int WAL_NREADER ;
 int assert (int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ sqlite3Get4byte (int *) ;
 int sqlite3Put4byte (int *,scalar_t__) ;
 TYPE_2__* walCkptInfo (TYPE_3__*) ;
 int walIndexWriteHdr (TYPE_3__*) ;

__attribute__((used)) static void walRestartHdr(Wal *pWal, u32 salt1){
  volatile WalCkptInfo *pInfo = walCkptInfo(pWal);
  int i;
  u32 *aSalt = pWal->hdr.aSalt;
  pWal->nCkpt++;
  pWal->hdr.mxFrame = 0;
  sqlite3Put4byte((u8*)&aSalt[0], 1 + sqlite3Get4byte((u8*)&aSalt[0]));
  memcpy(&pWal->hdr.aSalt[1], &salt1, 4);
  walIndexWriteHdr(pWal);
  pInfo->nBackfill = 0;
  pInfo->nBackfillAttempted = 0;
  pInfo->aReadMark[1] = 0;
  for(i=2; i<WAL_NREADER; i++) pInfo->aReadMark[i] = READMARK_NOT_USED;
  assert( pInfo->aReadMark[0]==0 );
}
