
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ (* sqlite3_callback ) (void*,int,char**,char**) ;
struct TYPE_11__ {int flags; int mallocFailed; int errMask; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;


 scalar_t__ ALWAYS (int) ;
 int SQLITE_ABORT ;
 int SQLITE_DONE ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_NOMEM ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_NullCallback ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int memcpy (char*,int ,int) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3DbFree (TYPE_1__*,char**) ;
 char** sqlite3DbMallocZero (TYPE_1__*,int) ;
 int sqlite3Error (TYPE_1__*,int,int ) ;
 scalar_t__ sqlite3Isspace (char const) ;
 char* sqlite3Malloc (int) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3Strlen30 (int ) ;
 int sqlite3VdbeFinalize (int *) ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_name (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 scalar_t__ sqlite3_column_type (int *,int) ;
 int sqlite3_errcode (TYPE_1__*) ;
 int sqlite3_errmsg (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_prepare_v2 (TYPE_1__*,char const*,int,int **,char const**) ;
 int sqlite3_step (int *) ;

int sqlite3_exec(
  sqlite3 *db,
  const char *zSql,
  sqlite3_callback xCallback,
  void *pArg,
  char **pzErrMsg
){
  int rc = SQLITE_OK;
  const char *zLeftover;
  sqlite3_stmt *pStmt = 0;
  char **azCols = 0;
  int callbackIsInit;

  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
  if( zSql==0 ) zSql = "";

  sqlite3_mutex_enter(db->mutex);
  sqlite3Error(db, SQLITE_OK, 0);
  while( rc==SQLITE_OK && zSql[0] ){
    int nCol;
    char **azVals = 0;

    pStmt = 0;
    rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, &zLeftover);
    assert( rc==SQLITE_OK || pStmt==0 );
    if( rc!=SQLITE_OK ){
      continue;
    }
    if( !pStmt ){

      zSql = zLeftover;
      continue;
    }

    callbackIsInit = 0;
    nCol = sqlite3_column_count(pStmt);

    while( 1 ){
      int i;
      rc = sqlite3_step(pStmt);


      if( xCallback && (SQLITE_ROW==rc ||
          (SQLITE_DONE==rc && !callbackIsInit
                           && db->flags&SQLITE_NullCallback)) ){
        if( !callbackIsInit ){
          azCols = sqlite3DbMallocZero(db, 2*nCol*sizeof(const char*) + 1);
          if( azCols==0 ){
            goto exec_out;
          }
          for(i=0; i<nCol; i++){
            azCols[i] = (char *)sqlite3_column_name(pStmt, i);


            assert( azCols[i]!=0 );
          }
          callbackIsInit = 1;
        }
        if( rc==SQLITE_ROW ){
          azVals = &azCols[nCol];
          for(i=0; i<nCol; i++){
            azVals[i] = (char *)sqlite3_column_text(pStmt, i);
            if( !azVals[i] && sqlite3_column_type(pStmt, i)!=SQLITE_NULL ){
              db->mallocFailed = 1;
              goto exec_out;
            }
          }
        }
        if( xCallback(pArg, nCol, azVals, azCols) ){
          rc = SQLITE_ABORT;
          sqlite3VdbeFinalize((Vdbe *)pStmt);
          pStmt = 0;
          sqlite3Error(db, SQLITE_ABORT, 0);
          goto exec_out;
        }
      }

      if( rc!=SQLITE_ROW ){
        rc = sqlite3VdbeFinalize((Vdbe *)pStmt);
        pStmt = 0;
        zSql = zLeftover;
        while( sqlite3Isspace(zSql[0]) ) zSql++;
        break;
      }
    }

    sqlite3DbFree(db, azCols);
    azCols = 0;
  }

exec_out:
  if( pStmt ) sqlite3VdbeFinalize((Vdbe *)pStmt);
  sqlite3DbFree(db, azCols);

  rc = sqlite3ApiExit(db, rc);
  if( rc!=SQLITE_OK && ALWAYS(rc==sqlite3_errcode(db)) && pzErrMsg ){
    int nErrMsg = 1 + sqlite3Strlen30(sqlite3_errmsg(db));
    *pzErrMsg = sqlite3Malloc(nErrMsg);
    if( *pzErrMsg ){
      memcpy(*pzErrMsg, sqlite3_errmsg(db), nErrMsg);
    }else{
      rc = SQLITE_NOMEM;
      sqlite3Error(db, SQLITE_NOMEM, 0);
    }
  }else if( pzErrMsg ){
    *pzErrMsg = 0;
  }

  assert( (rc&db->errMask)==rc );
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
