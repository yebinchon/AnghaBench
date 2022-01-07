
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_33__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int sNC ;
typedef int Vdbe ;
struct TYPE_34__ {int orconf; int* aColmask; TYPE_3__* pTrigger; TYPE_5__* pProgram; struct TYPE_34__* pNext; } ;
typedef TYPE_2__ TriggerPrg ;
struct TYPE_35__ {scalar_t__ op; scalar_t__ tr_tm; int zName; int step_list; int pWhen; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_36__ {int zName; } ;
typedef TYPE_4__ Table ;
struct TYPE_39__ {TYPE_6__* pParse; } ;
struct TYPE_38__ {int pVdbe; scalar_t__ eTriggerOp; int oldmask; int newmask; int nMaxArg; TYPE_2__* pTriggerPrg; int pZombieTab; int pAinc; int nTab; int nMem; int nQueryLoop; int zAuthContext; struct TYPE_38__* pToplevel; TYPE_4__* pTriggerTab; TYPE_1__* db; } ;
struct TYPE_37__ {void* token; int nCsr; int nMem; int nOp; int aOp; } ;
typedef TYPE_5__ SubProgram ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ NameContext ;
typedef int Expr ;


 int OP_Halt ;
 int P4_DYNAMIC ;
 int SQLITE_JUMPIFNULL ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ TK_DELETE ;
 scalar_t__ TK_INSERT ;
 scalar_t__ TK_UPDATE ;
 scalar_t__ TRIGGER_BEFORE ;
 int VdbeComment (int *) ;
 int assert (int) ;
 int codeTriggerProgram (TYPE_6__*,int ,int) ;
 int memset (TYPE_7__*,int ,int) ;
 int onErrorText (int) ;
 void* sqlite3DbMallocZero (TYPE_1__*,int) ;
 int sqlite3ExprDelete (TYPE_1__*,int *) ;
 int * sqlite3ExprDup (TYPE_1__*,int ,int ) ;
 int sqlite3ExprIfFalse (TYPE_6__*,int *,int,int ) ;
 int * sqlite3GetVdbe (TYPE_6__*) ;
 int sqlite3MPrintf (TYPE_1__*,char*,int ) ;
 TYPE_6__* sqlite3ParseToplevel (TYPE_6__*) ;
 int sqlite3ParserReset (TYPE_6__*) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_7__*,int *) ;
 TYPE_6__* sqlite3StackAllocZero (TYPE_1__*,int) ;
 int sqlite3StackFree (TYPE_1__*,TYPE_6__*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeChangeP4 (int *,int,int ,int ) ;
 int sqlite3VdbeDelete (int *) ;
 int sqlite3VdbeLinkSubProgram (int,TYPE_5__*) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int sqlite3VdbeTakeOpArray (int *,int *,int *) ;
 TYPE_4__* tableOfTrigger (TYPE_3__*) ;
 int transferParseError (TYPE_6__*,TYPE_6__*) ;

__attribute__((used)) static TriggerPrg *codeRowTrigger(
  Parse *pParse,
  Trigger *pTrigger,
  Table *pTab,
  int orconf
){
  Parse *pTop = sqlite3ParseToplevel(pParse);
  sqlite3 *db = pParse->db;
  TriggerPrg *pPrg;
  Expr *pWhen = 0;
  Vdbe *v;
  NameContext sNC;
  SubProgram *pProgram = 0;
  Parse *pSubParse;
  int iEndTrigger = 0;

  assert( pTrigger->zName==0 || pTab==tableOfTrigger(pTrigger) );
  assert( pTop->pVdbe );




  pPrg = sqlite3DbMallocZero(db, sizeof(TriggerPrg));
  if( !pPrg ) return 0;
  pPrg->pNext = pTop->pTriggerPrg;
  pTop->pTriggerPrg = pPrg;
  pPrg->pProgram = pProgram = sqlite3DbMallocZero(db, sizeof(SubProgram));
  if( !pProgram ) return 0;
  sqlite3VdbeLinkSubProgram(pTop->pVdbe, pProgram);
  pPrg->pTrigger = pTrigger;
  pPrg->orconf = orconf;
  pPrg->aColmask[0] = 0xffffffff;
  pPrg->aColmask[1] = 0xffffffff;



  pSubParse = sqlite3StackAllocZero(db, sizeof(Parse));
  if( !pSubParse ) return 0;
  memset(&sNC, 0, sizeof(sNC));
  sNC.pParse = pSubParse;
  pSubParse->db = db;
  pSubParse->pTriggerTab = pTab;
  pSubParse->pToplevel = pTop;
  pSubParse->zAuthContext = pTrigger->zName;
  pSubParse->eTriggerOp = pTrigger->op;
  pSubParse->nQueryLoop = pParse->nQueryLoop;

  v = sqlite3GetVdbe(pSubParse);
  if( v ){
    VdbeComment((v, "Start: %s.%s (%s %s%s%s ON %s)",
      pTrigger->zName, onErrorText(orconf),
      (pTrigger->tr_tm==TRIGGER_BEFORE ? "BEFORE" : "AFTER"),
        (pTrigger->op==TK_UPDATE ? "UPDATE" : ""),
        (pTrigger->op==TK_INSERT ? "INSERT" : ""),
        (pTrigger->op==TK_DELETE ? "DELETE" : ""),
      pTab->zName
    ));

    sqlite3VdbeChangeP4(v, -1,
      sqlite3MPrintf(db, "-- TRIGGER %s", pTrigger->zName), P4_DYNAMIC
    );





    if( pTrigger->pWhen ){
      pWhen = sqlite3ExprDup(db, pTrigger->pWhen, 0);
      if( SQLITE_OK==sqlite3ResolveExprNames(&sNC, pWhen)
       && db->mallocFailed==0
      ){
        iEndTrigger = sqlite3VdbeMakeLabel(v);
        sqlite3ExprIfFalse(pSubParse, pWhen, iEndTrigger, SQLITE_JUMPIFNULL);
      }
      sqlite3ExprDelete(db, pWhen);
    }


    codeTriggerProgram(pSubParse, pTrigger->step_list, orconf);


    if( iEndTrigger ){
      sqlite3VdbeResolveLabel(v, iEndTrigger);
    }
    sqlite3VdbeAddOp0(v, OP_Halt);
    VdbeComment((v, "End: %s.%s", pTrigger->zName, onErrorText(orconf)));

    transferParseError(pParse, pSubParse);
    if( db->mallocFailed==0 ){
      pProgram->aOp = sqlite3VdbeTakeOpArray(v, &pProgram->nOp, &pTop->nMaxArg);
    }
    pProgram->nMem = pSubParse->nMem;
    pProgram->nCsr = pSubParse->nTab;
    pProgram->token = (void *)pTrigger;
    pPrg->aColmask[0] = pSubParse->oldmask;
    pPrg->aColmask[1] = pSubParse->newmask;
    sqlite3VdbeDelete(v);
  }

  assert( !pSubParse->pAinc && !pSubParse->pZombieTab );
  assert( !pSubParse->pTriggerPrg && !pSubParse->nMaxArg );
  sqlite3ParserReset(pSubParse);
  sqlite3StackFree(db, pSubParse);

  return pPrg;
}
