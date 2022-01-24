#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int p1; scalar_t__ opcode; int p2; int p3; } ;
typedef  TYPE_2__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_8__ {TYPE_1__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_6__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 scalar_t__ OP_Column ; 
 scalar_t__ OP_Copy ; 
 scalar_t__ OP_Null ; 
 scalar_t__ OP_Rowid ; 
 scalar_t__ OP_Sequence ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(
  Parse *pParse,      /* Parsing context */
  int iStart,         /* Translate from this opcode to the end */
  int iTabCur,        /* OP_Column/OP_Rowid references to this table */
  int iRegister,      /* The first column is in this register */
  int iAutoidxCur     /* If non-zero, cursor of autoindex being generated */
){
  Vdbe *v = pParse->pVdbe;
  VdbeOp *pOp = FUNC1(v, iStart);
  int iEnd = FUNC0(v);
  if( pParse->db->mallocFailed ) return;
  for(; iStart<iEnd; iStart++, pOp++){
    if( pOp->p1!=iTabCur ) continue;
    if( pOp->opcode==OP_Column ){
      pOp->opcode = OP_Copy;
      pOp->p1 = pOp->p2 + iRegister;
      pOp->p2 = pOp->p3;
      pOp->p3 = 0;
    }else if( pOp->opcode==OP_Rowid ){
      if( iAutoidxCur ){
        pOp->opcode = OP_Sequence;
        pOp->p1 = iAutoidxCur;
      }else{
        pOp->opcode = OP_Null;
        pOp->p1 = 0;
        pOp->p3 = 0;
      }
    }
  }
}