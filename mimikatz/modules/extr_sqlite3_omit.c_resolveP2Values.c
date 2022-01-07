
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int readOnly; int bIsReader; int nOp; int btreeMask; int db; TYPE_4__* aOp; TYPE_3__* pParse; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_6__ {int xAdvance; } ;
struct TYPE_9__ {int opcode; scalar_t__ p2; int p1; void* p4type; TYPE_1__ p4; } ;
struct TYPE_8__ {int* aLabel; size_t nLabel; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Op ;


 size_t ADDR (scalar_t__) ;
 scalar_t__ DbMaskAllZero (int ) ;
 int OPFLG_JUMP ;


 int OP_Integer ;
 void* P4_ADVANCE ;
 int SQLITE_MX_JUMP_OPCODE ;
 int assert (int) ;
 int sqlite3BtreeNext ;
 int sqlite3BtreePrevious ;
 int sqlite3DbFree (int ,int*) ;
 int* sqlite3OpcodeProperty ;

__attribute__((used)) static void resolveP2Values(Vdbe *p, int *pMaxFuncArgs){
  int nMaxArgs = *pMaxFuncArgs;
  Op *pOp;
  Parse *pParse = p->pParse;
  int *aLabel = pParse->aLabel;
  p->readOnly = 1;
  p->bIsReader = 0;
  pOp = &p->aOp[p->nOp-1];
  while(1){







    if( pOp->opcode<=SQLITE_MX_JUMP_OPCODE ){


      switch( pOp->opcode ){
        case 131: {
          if( pOp->p2!=0 ) p->readOnly = 0;

        }
        case 138:
        case 133: {
          p->bIsReader = 1;
          break;
        }

        case 137:

        case 128:
        case 136: {
          p->readOnly = 0;
          p->bIsReader = 1;
          break;
        }
        case 135:
        case 132: {
          pOp->p4.xAdvance = sqlite3BtreeNext;
          pOp->p4type = P4_ADVANCE;



          assert( pOp->p2>=0 );
          break;
        }
        case 134: {
          pOp->p4.xAdvance = sqlite3BtreePrevious;
          pOp->p4type = P4_ADVANCE;



          assert( pOp->p2>=0 );
          break;
        }

        case 129: {
          if( pOp->p2>nMaxArgs ) nMaxArgs = pOp->p2;
          break;
        }
        case 130: {
          int n;
          assert( (pOp - p->aOp) >= 3 );
          assert( pOp[-1].opcode==OP_Integer );
          n = pOp[-1].p1;
          if( n>nMaxArgs ) nMaxArgs = n;

        }

        default: {
          if( pOp->p2<0 ){



            assert( (sqlite3OpcodeProperty[pOp->opcode] & OPFLG_JUMP)!=0 );
            assert( ADDR(pOp->p2)<-pParse->nLabel );
            pOp->p2 = aLabel[ADDR(pOp->p2)];
          }
          break;
        }
      }



      assert( (sqlite3OpcodeProperty[pOp->opcode]&OPFLG_JUMP)==0 || pOp->p2>=0);
    }
    if( pOp==p->aOp ) break;
    pOp--;
  }
  sqlite3DbFree(p->db, pParse->aLabel);
  pParse->aLabel = 0;
  pParse->nLabel = 0;
  *pMaxFuncArgs = nMaxArgs;
  assert( p->bIsReader!=0 || DbMaskAllZero(p->btreeMask) );
}
