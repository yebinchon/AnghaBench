
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int iDb; } ;
struct TYPE_13__ {TYPE_2__ init; scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_15__ {int nQueryLoop; char* zErrMsg; scalar_t__ pNewTable; scalar_t__ pNewIndex; scalar_t__ pNewTrigger; TYPE_4__* pRename; TYPE_3__* db; int eParseMode; } ;
struct TYPE_11__ {char const* z; size_t n; } ;
struct TYPE_14__ {TYPE_1__ t; struct TYPE_14__* pNext; } ;
typedef TYPE_4__ RenameToken ;
typedef TYPE_5__ Parse ;


 int PARSE_MODE_RENAME_COLUMN ;
 int PARSE_MODE_RENAME_TABLE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int sqlite3FindDbName (TYPE_3__*,char const*) ;
 int sqlite3RunParser (TYPE_5__*,char const*,char**) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static int renameParseSql(
  Parse *p,
  const char *zDb,
  int bTable,
  sqlite3 *db,
  const char *zSql,
  int bTemp
){
  int rc;
  char *zErr = 0;

  db->init.iDb = bTemp ? 1 : sqlite3FindDbName(db, zDb);




  memset(p, 0, sizeof(Parse));
  p->eParseMode = (bTable ? PARSE_MODE_RENAME_TABLE : PARSE_MODE_RENAME_COLUMN);
  p->db = db;
  p->nQueryLoop = 1;
  rc = sqlite3RunParser(p, zSql, &zErr);
  assert( p->zErrMsg==0 );
  assert( rc!=SQLITE_OK || zErr==0 );
  p->zErrMsg = zErr;
  if( db->mallocFailed ) rc = SQLITE_NOMEM;
  if( rc==SQLITE_OK
   && p->pNewTable==0 && p->pNewIndex==0 && p->pNewTrigger==0
  ){
    rc = SQLITE_CORRUPT_BKPT;
  }
  db->init.iDb = 0;
  return rc;
}
