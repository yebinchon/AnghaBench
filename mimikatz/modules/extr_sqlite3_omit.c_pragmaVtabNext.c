
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {scalar_t__ pPragma; int iRowid; } ;
typedef TYPE_1__ PragmaVtabCursor ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (scalar_t__) ;
 int pragmaVtabCursorClear (TYPE_1__*) ;
 int sqlite3_finalize (scalar_t__) ;
 scalar_t__ sqlite3_step (scalar_t__) ;

__attribute__((used)) static int pragmaVtabNext(sqlite3_vtab_cursor *pVtabCursor){
  PragmaVtabCursor *pCsr = (PragmaVtabCursor*)pVtabCursor;
  int rc = SQLITE_OK;


  pCsr->iRowid++;
  assert( pCsr->pPragma );
  if( SQLITE_ROW!=sqlite3_step(pCsr->pPragma) ){
    rc = sqlite3_finalize(pCsr->pPragma);
    pCsr->pPragma = 0;
    pragmaVtabCursorClear(pCsr);
  }
  return rc;
}
