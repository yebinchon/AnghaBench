
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef char* sqlite3_int64 ;
struct TYPE_10__ {TYPE_3__** apCsr; TYPE_2__* aVar; } ;
typedef TYPE_4__ Vdbe ;
struct TYPE_11__ {size_t iCol; int db; scalar_t__ pStmt; int pCsr; int nByte; int iOffset; } ;
struct TYPE_9__ {int* aType; int pCursor; int * aOffset; } ;
struct TYPE_7__ {char* i; } ;
struct TYPE_8__ {int flags; TYPE_1__ u; } ;
typedef TYPE_5__ Incrblob ;


 int MEM_Int ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int sqlite3BtreeCacheOverflow (int ) ;
 int sqlite3BtreeEnterCursor (int ) ;
 int sqlite3BtreeLeaveCursor (int ) ;
 char* sqlite3MPrintf (int ,char*,char*) ;
 int sqlite3VdbeSerialTypeLen (int) ;
 char* sqlite3_errmsg (int ) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static int blobSeekToRow(Incrblob *p, sqlite3_int64 iRow, char **pzErr){
  int rc;
  char *zErr = 0;
  Vdbe *v = (Vdbe *)p->pStmt;





  assert( v->aVar[0].flags&MEM_Int );
  v->aVar[0].u.i = iRow;

  rc = sqlite3_step(p->pStmt);
  if( rc==SQLITE_ROW ){
    u32 type = v->apCsr[0]->aType[p->iCol];
    if( type<12 ){
      zErr = sqlite3MPrintf(p->db, "cannot open value of type %s",
          type==0?"null": type==7?"real": "integer"
      );
      rc = SQLITE_ERROR;
      sqlite3_finalize(p->pStmt);
      p->pStmt = 0;
    }else{
      p->iOffset = v->apCsr[0]->aOffset[p->iCol];
      p->nByte = sqlite3VdbeSerialTypeLen(type);
      p->pCsr = v->apCsr[0]->pCursor;
      sqlite3BtreeEnterCursor(p->pCsr);
      sqlite3BtreeCacheOverflow(p->pCsr);
      sqlite3BtreeLeaveCursor(p->pCsr);
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
