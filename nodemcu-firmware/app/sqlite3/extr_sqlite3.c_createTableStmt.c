
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int nCol; TYPE_2__* aCol; int zName; } ;
typedef TYPE_1__ Table ;
struct TYPE_5__ {scalar_t__ affinity; int zName; } ;
typedef TYPE_2__ Column ;


 scalar_t__ ArraySize (char const* const*) ;
 scalar_t__ SQLITE_AFF_BLOB ;
 scalar_t__ SQLITE_AFF_INTEGER ;
 scalar_t__ SQLITE_AFF_NUMERIC ;
 scalar_t__ SQLITE_AFF_REAL ;
 scalar_t__ SQLITE_AFF_TEXT ;
 int assert (int) ;
 scalar_t__ identLength (int ) ;
 int identPut (char*,int*,int ) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ sqlite3AffinityType (char const*,int ) ;
 char* sqlite3DbMallocRaw (int ,int) ;
 int sqlite3OomFault (int *) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 int testcase (int) ;

__attribute__((used)) static char *createTableStmt(sqlite3 *db, Table *p){
  int i, k, n;
  char *zStmt;
  char *zSep, *zSep2, *zEnd;
  Column *pCol;
  n = 0;
  for(pCol = p->aCol, i=0; i<p->nCol; i++, pCol++){
    n += identLength(pCol->zName) + 5;
  }
  n += identLength(p->zName);
  if( n<50 ){
    zSep = "";
    zSep2 = ",";
    zEnd = ")";
  }else{
    zSep = "\n  ";
    zSep2 = ",\n  ";
    zEnd = "\n)";
  }
  n += 35 + 6*p->nCol;
  zStmt = sqlite3DbMallocRaw(0, n);
  if( zStmt==0 ){
    sqlite3OomFault(db);
    return 0;
  }
  sqlite3_snprintf(n, zStmt, "CREATE TABLE ");
  k = sqlite3Strlen30(zStmt);
  identPut(zStmt, &k, p->zName);
  zStmt[k++] = '(';
  for(pCol=p->aCol, i=0; i<p->nCol; i++, pCol++){
    static const char * const azType[] = {
                                 "",
                                 " TEXT",
                                 " NUM",
                                 " INT",
                                 " REAL"
    };
    int len;
    const char *zType;

    sqlite3_snprintf(n-k, &zStmt[k], zSep);
    k += sqlite3Strlen30(&zStmt[k]);
    zSep = zSep2;
    identPut(zStmt, &k, pCol->zName);
    assert( pCol->affinity-SQLITE_AFF_BLOB >= 0 );
    assert( pCol->affinity-SQLITE_AFF_BLOB < ArraySize(azType) );
    testcase( pCol->affinity==SQLITE_AFF_BLOB );
    testcase( pCol->affinity==SQLITE_AFF_TEXT );
    testcase( pCol->affinity==SQLITE_AFF_NUMERIC );
    testcase( pCol->affinity==SQLITE_AFF_INTEGER );
    testcase( pCol->affinity==SQLITE_AFF_REAL );

    zType = azType[pCol->affinity - SQLITE_AFF_BLOB];
    len = sqlite3Strlen30(zType);
    assert( pCol->affinity==SQLITE_AFF_BLOB
            || pCol->affinity==sqlite3AffinityType(zType, 0) );
    memcpy(&zStmt[k], zType, len);
    k += len;
    assert( k<=n );
  }
  sqlite3_snprintf(n-k, &zStmt[k], "%s", zEnd);
  return zStmt;
}
