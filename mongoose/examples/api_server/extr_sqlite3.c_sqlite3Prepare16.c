
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_stmt ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_UTF16NATIVE ;
 int assert (int **) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3DbFree (TYPE_1__*,char*) ;
 int sqlite3LockAndPrepare (TYPE_1__*,char*,int,int,int ,int **,char const**) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3Utf16ByteLen (void const*,int) ;
 char* sqlite3Utf16to8 (TYPE_1__*,void const*,int,int ) ;
 int sqlite3Utf8CharLen (char*,int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int sqlite3Prepare16(
  sqlite3 *db,
  const void *zSql,
  int nBytes,
  int saveSqlFlag,
  sqlite3_stmt **ppStmt,
  const void **pzTail
){




  char *zSql8;
  const char *zTail8 = 0;
  int rc = SQLITE_OK;

  assert( ppStmt );
  *ppStmt = 0;
  if( !sqlite3SafetyCheckOk(db) ){
    return SQLITE_MISUSE_BKPT;
  }
  sqlite3_mutex_enter(db->mutex);
  zSql8 = sqlite3Utf16to8(db, zSql, nBytes, SQLITE_UTF16NATIVE);
  if( zSql8 ){
    rc = sqlite3LockAndPrepare(db, zSql8, -1, saveSqlFlag, 0, ppStmt, &zTail8);
  }

  if( zTail8 && pzTail ){





    int chars_parsed = sqlite3Utf8CharLen(zSql8, (int)(zTail8-zSql8));
    *pzTail = (u8 *)zSql + sqlite3Utf16ByteLen(zSql, chars_parsed);
  }
  sqlite3DbFree(db, zSql8);
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
