
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct AuxData {void* pAux; void (* xDelete ) (void*) ;} ;
struct TYPE_8__ {TYPE_6__* db; } ;
struct TYPE_9__ {int pFunc; TYPE_3__* pVdbeFunc; TYPE_1__ s; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_10__ {int nAux; struct AuxData* apAux; int pFunc; } ;
typedef TYPE_3__ VdbeFunc ;
struct TYPE_11__ {int mutex; } ;


 int assert (int ) ;
 int memset (struct AuxData*,int ,int) ;
 TYPE_3__* sqlite3DbRealloc (TYPE_6__*,TYPE_3__*,int) ;
 int sqlite3_mutex_held (int ) ;
 void stub1 (void*) ;

void sqlite3_set_auxdata(
  sqlite3_context *pCtx,
  int iArg,
  void *pAux,
  void (*xDelete)(void*)
){
  struct AuxData *pAuxData;
  VdbeFunc *pVdbeFunc;
  if( iArg<0 ) goto failed;

  assert( sqlite3_mutex_held(pCtx->s.db->mutex) );
  pVdbeFunc = pCtx->pVdbeFunc;
  if( !pVdbeFunc || pVdbeFunc->nAux<=iArg ){
    int nAux = (pVdbeFunc ? pVdbeFunc->nAux : 0);
    int nMalloc = sizeof(VdbeFunc) + sizeof(struct AuxData)*iArg;
    pVdbeFunc = sqlite3DbRealloc(pCtx->s.db, pVdbeFunc, nMalloc);
    if( !pVdbeFunc ){
      goto failed;
    }
    pCtx->pVdbeFunc = pVdbeFunc;
    memset(&pVdbeFunc->apAux[nAux], 0, sizeof(struct AuxData)*(iArg+1-nAux));
    pVdbeFunc->nAux = iArg+1;
    pVdbeFunc->pFunc = pCtx->pFunc;
  }

  pAuxData = &pVdbeFunc->apAux[iArg];
  if( pAuxData->pAux && pAuxData->xDelete ){
    pAuxData->xDelete(pAuxData->pAux);
  }
  pAuxData->pAux = pAux;
  pAuxData->xDelete = xDelete;
  return;

failed:
  if( xDelete ){
    xDelete(pAux);
  }
}
