
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
typedef char* sqlite3_int64 ;
struct TYPE_11__ {int pCursor; } ;
struct TYPE_12__ {int nHdrParsed; int* aType; size_t nField; TYPE_3__ uc; } ;
typedef TYPE_4__ VdbeCursor ;
struct TYPE_13__ {int pc; TYPE_4__** apCsr; TYPE_2__* aMem; } ;
typedef TYPE_5__ Vdbe ;
struct TYPE_14__ {int iCol; int iOffset; int db; scalar_t__ pStmt; int pCsr; int nByte; } ;
struct TYPE_9__ {char* i; } ;
struct TYPE_10__ {TYPE_1__ u; int flags; } ;
typedef TYPE_6__ Incrblob ;


 int MEM_Int ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int sqlite3BtreeIncrblobCursor (int ) ;
 char* sqlite3MPrintf (int ,char*,char*) ;
 int sqlite3VdbeExec (TYPE_5__*) ;
 int sqlite3VdbeSerialTypeLen (int) ;
 char* sqlite3_errmsg (int ) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;
 int testcase (int) ;

__attribute__((used)) static int blobSeekToRow(Incrblob *p, sqlite3_int64 iRow, char **pzErr){
  int rc;
  char *zErr = 0;
  Vdbe *v = (Vdbe *)p->pStmt;




  v->aMem[1].flags = MEM_Int;
  v->aMem[1].u.i = iRow;





  if( v->pc>3 ){
    v->pc = 3;
    rc = sqlite3VdbeExec(v);
  }else{
    rc = sqlite3_step(p->pStmt);
  }
  if( rc==SQLITE_ROW ){
    VdbeCursor *pC = v->apCsr[0];
    u32 type = pC->nHdrParsed>p->iCol ? pC->aType[p->iCol] : 0;
    testcase( pC->nHdrParsed==p->iCol );
    testcase( pC->nHdrParsed==p->iCol+1 );
    if( type<12 ){
      zErr = sqlite3MPrintf(p->db, "cannot open value of type %s",
          type==0?"null": type==7?"real": "integer"
      );
      rc = SQLITE_ERROR;
      sqlite3_finalize(p->pStmt);
      p->pStmt = 0;
    }else{
      p->iOffset = pC->aType[p->iCol + pC->nField];
      p->nByte = sqlite3VdbeSerialTypeLen(type);
      p->pCsr = pC->uc.pCursor;
      sqlite3BtreeIncrblobCursor(p->pCsr);
    }
  }

  if( rc==SQLITE_ROW ){
    rc = SQLITE_OK;
  }else if( p->pStmt ){
    rc = sqlite3_finalize(p->pStmt);
    p->pStmt = 0;
    if( rc==SQLITE_OK ){
      zErr = sqlite3MPrintf(p->db, "no such rowid: %lld", iRow);
      rc = SQLITE_ERROR;
    }else{
      zErr = sqlite3MPrintf(p->db, "%s", sqlite3_errmsg(p->db));
    }
  }

  assert( rc!=SQLITE_OK || zErr==0 );
  assert( rc!=SQLITE_ROW && rc!=SQLITE_DONE );

  *pzErr = zErr;
  return rc;
}
