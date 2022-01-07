
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ iOp; int fErrorOrAux; scalar_t__ isError; TYPE_2__* pOut; TYPE_4__* pVdbe; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_11__ {TYPE_5__* pAuxData; int db; } ;
typedef TYPE_4__ Vdbe ;
struct TYPE_12__ {int iAuxArg; scalar_t__ iAuxOp; void (* xDeleteAux ) (void*) ;void* pAux; struct TYPE_12__* pNextAux; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_5__ AuxData ;


 int assert (int) ;
 TYPE_5__* sqlite3DbMallocZero (int ,int) ;
 int sqlite3_mutex_held (int ) ;
 void stub1 (void*) ;

void sqlite3_set_auxdata(
  sqlite3_context *pCtx,
  int iArg,
  void *pAux,
  void (*xDelete)(void*)
){
  AuxData *pAuxData;
  Vdbe *pVdbe = pCtx->pVdbe;

  assert( sqlite3_mutex_held(pCtx->pOut->db->mutex) );



  assert( pVdbe!=0 );


  for(pAuxData=pVdbe->pAuxData; pAuxData; pAuxData=pAuxData->pNextAux){
    if( pAuxData->iAuxArg==iArg && (pAuxData->iAuxOp==pCtx->iOp || iArg<0) ){
      break;
    }
  }
  if( pAuxData==0 ){
    pAuxData = sqlite3DbMallocZero(pVdbe->db, sizeof(AuxData));
    if( !pAuxData ) goto failed;
    pAuxData->iAuxOp = pCtx->iOp;
    pAuxData->iAuxArg = iArg;
    pAuxData->pNextAux = pVdbe->pAuxData;
    pVdbe->pAuxData = pAuxData;
    if( pCtx->fErrorOrAux==0 ){
      pCtx->isError = 0;
      pCtx->fErrorOrAux = 1;
    }
  }else if( pAuxData->xDeleteAux ){
    pAuxData->xDeleteAux(pAuxData->pAux);
  }

  pAuxData->pAux = pAux;
  pAuxData->xDeleteAux = xDelete;
  return;

failed:
  if( xDelete ){
    xDelete(pAux);
  }
}
