
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_18__ {int nCol; int iPKey; int tabFlags; TYPE_3__* aCol; scalar_t__ pSelect; } ;
typedef TYPE_2__ Table ;
struct TYPE_19__ {char* zColl; scalar_t__ notNull; int colFlags; int zName; } ;
typedef TYPE_3__ Column ;


 int COLFLAG_PRIMKEY ;
 scalar_t__ HasRowid (TYPE_2__*) ;
 int SQLITE_ERROR ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int TF_Autoincrement ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3BtreeEnterAll (TYPE_1__*) ;
 int sqlite3BtreeLeaveAll (TYPE_1__*) ;
 char* sqlite3ColumnType (TYPE_3__*,int ) ;
 int sqlite3DbFree (TYPE_1__*,char*) ;
 int sqlite3ErrorWithMsg (TYPE_1__*,int,char*,char*) ;
 TYPE_2__* sqlite3FindTable (TYPE_1__*,char const*,char const*) ;
 int sqlite3Init (TYPE_1__*,char**) ;
 scalar_t__ sqlite3IsRowid (char const*) ;
 char* sqlite3MPrintf (TYPE_1__*,char*,char const*,char const*) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 char* sqlite3StrBINARY ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_table_column_metadata(
  sqlite3 *db,
  const char *zDbName,
  const char *zTableName,
  const char *zColumnName,
  char const **pzDataType,
  char const **pzCollSeq,
  int *pNotNull,
  int *pPrimaryKey,
  int *pAutoinc
){
  int rc;
  char *zErrMsg = 0;
  Table *pTab = 0;
  Column *pCol = 0;
  int iCol = 0;
  char const *zDataType = 0;
  char const *zCollSeq = 0;
  int notnull = 0;
  int primarykey = 0;
  int autoinc = 0;
  sqlite3_mutex_enter(db->mutex);
  sqlite3BtreeEnterAll(db);
  rc = sqlite3Init(db, &zErrMsg);
  if( SQLITE_OK!=rc ){
    goto error_out;
  }


  pTab = sqlite3FindTable(db, zTableName, zDbName);
  if( !pTab || pTab->pSelect ){
    pTab = 0;
    goto error_out;
  }


  if( zColumnName==0 ){

  }else{
    for(iCol=0; iCol<pTab->nCol; iCol++){
      pCol = &pTab->aCol[iCol];
      if( 0==sqlite3StrICmp(pCol->zName, zColumnName) ){
        break;
      }
    }
    if( iCol==pTab->nCol ){
      if( HasRowid(pTab) && sqlite3IsRowid(zColumnName) ){
        iCol = pTab->iPKey;
        pCol = iCol>=0 ? &pTab->aCol[iCol] : 0;
      }else{
        pTab = 0;
        goto error_out;
      }
    }
  }
  if( pCol ){
    zDataType = sqlite3ColumnType(pCol,0);
    zCollSeq = pCol->zColl;
    notnull = pCol->notNull!=0;
    primarykey = (pCol->colFlags & COLFLAG_PRIMKEY)!=0;
    autoinc = pTab->iPKey==iCol && (pTab->tabFlags & TF_Autoincrement)!=0;
  }else{
    zDataType = "INTEGER";
    primarykey = 1;
  }
  if( !zCollSeq ){
    zCollSeq = sqlite3StrBINARY;
  }

error_out:
  sqlite3BtreeLeaveAll(db);





  if( pzDataType ) *pzDataType = zDataType;
  if( pzCollSeq ) *pzCollSeq = zCollSeq;
  if( pNotNull ) *pNotNull = notnull;
  if( pPrimaryKey ) *pPrimaryKey = primarykey;
  if( pAutoinc ) *pAutoinc = autoinc;

  if( SQLITE_OK==rc && !pTab ){
    sqlite3DbFree(db, zErrMsg);
    zErrMsg = sqlite3MPrintf(db, "no such table column: %s.%s", zTableName,
        zColumnName);
    rc = SQLITE_ERROR;
  }
  sqlite3ErrorWithMsg(db, rc, (zErrMsg?"%s":0), zErrMsg);
  sqlite3DbFree(db, zErrMsg);
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
