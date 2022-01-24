#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  char* sqlite3_int64 ;
struct TYPE_11__ {int /*<<< orphan*/  pCursor; } ;
struct TYPE_12__ {int nHdrParsed; int* aType; size_t nField; TYPE_3__ uc; } ;
typedef  TYPE_4__ VdbeCursor ;
struct TYPE_13__ {int pc; TYPE_4__** apCsr; TYPE_2__* aMem; } ;
typedef  TYPE_5__ Vdbe ;
struct TYPE_14__ {int iCol; int iOffset; int /*<<< orphan*/  db; scalar_t__ pStmt; int /*<<< orphan*/  pCsr; int /*<<< orphan*/  nByte; } ;
struct TYPE_9__ {char* i; } ;
struct TYPE_10__ {TYPE_1__ u; int /*<<< orphan*/  flags; } ;
typedef  TYPE_6__ Incrblob ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Int ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(Incrblob *p, sqlite3_int64 iRow, char **pzErr){
  int rc;                         /* Error code */
  char *zErr = 0;                 /* Error message */
  Vdbe *v = (Vdbe *)p->pStmt;

  /* Set the value of register r[1] in the SQL statement to integer iRow.
  ** This is done directly as a performance optimization
  */
  v->aMem[1].flags = MEM_Int;
  v->aMem[1].u.i = iRow;

  /* If the statement has been run before (and is paused at the OP_ResultRow)
  ** then back it up to the point where it does the OP_SeekRowid.  This could
  ** have been down with an extra OP_Goto, but simply setting the program
  ** counter is faster. */
  if( v->pc>3 ){
    v->pc = 3;
    rc = FUNC3(v);
  }else{
    rc = FUNC7(p->pStmt);
  }
  if( rc==SQLITE_ROW ){
    VdbeCursor *pC = v->apCsr[0];
    u32 type = pC->nHdrParsed>p->iCol ? pC->aType[p->iCol] : 0;
    FUNC8( pC->nHdrParsed==p->iCol );
    FUNC8( pC->nHdrParsed==p->iCol+1 );
    if( type<12 ){
      zErr = FUNC2(p->db, "cannot open value of type %s",
          type==0?"null": type==7?"real": "integer"
      );
      rc = SQLITE_ERROR;
      FUNC6(p->pStmt);
      p->pStmt = 0;
    }else{
      p->iOffset = pC->aType[p->iCol + pC->nField];
      p->nByte = FUNC4(type);
      p->pCsr =  pC->uc.pCursor;
      FUNC1(p->pCsr);
    }
  }

  if( rc==SQLITE_ROW ){
    rc = SQLITE_OK;
  }else if( p->pStmt ){
    rc = FUNC6(p->pStmt);
    p->pStmt = 0;
    if( rc==SQLITE_OK ){
      zErr = FUNC2(p->db, "no such rowid: %lld", iRow);
      rc = SQLITE_ERROR;
    }else{
      zErr = FUNC2(p->db, "%s", FUNC5(p->db));
    }
  }

  FUNC0( rc!=SQLITE_OK || zErr==0 );
  FUNC0( rc!=SQLITE_ROW && rc!=SQLITE_DONE );

  *pzErr = zErr;
  return rc;
}