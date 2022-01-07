
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {char** pzErrMsg; int rc; TYPE_1__* db; } ;
typedef TYPE_2__ InitData ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_RecoveryMode ;
 int sqlite3DbFree (TYPE_1__*,char*) ;
 char* sqlite3MPrintf (TYPE_1__*,char*,char const*,...) ;

__attribute__((used)) static void corruptSchema(
  InitData *pData,
  const char *zObj,
  const char *zExtra
){
  sqlite3 *db = pData->db;
  if( !db->mallocFailed && (db->flags & SQLITE_RecoveryMode)==0 ){
    char *z;
    if( zObj==0 ) zObj = "?";
    z = sqlite3MPrintf(db, "malformed database schema (%s)", zObj);
    if( zExtra ) z = sqlite3MPrintf(db, "%z - %s", z, zExtra);
    sqlite3DbFree(db, *pData->pzErrMsg);
    *pData->pzErrMsg = z;
  }
  pData->rc = db->mallocFailed ? SQLITE_NOMEM_BKPT : SQLITE_CORRUPT_BKPT;
}
