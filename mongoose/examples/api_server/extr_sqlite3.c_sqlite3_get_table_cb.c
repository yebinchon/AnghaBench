
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nRow; int nData; int nAlloc; char** azResult; int nColumn; int rc; void* zErrMsg; } ;
typedef TYPE_1__ TabResult ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int memcpy (char*,char*,int) ;
 int sqlite3Strlen30 (char*) ;
 int sqlite3_free (void*) ;
 char* sqlite3_malloc (int) ;
 void* sqlite3_mprintf (char*,...) ;
 char** sqlite3_realloc (char**,int) ;

__attribute__((used)) static int sqlite3_get_table_cb(void *pArg, int nCol, char **argv, char **colv){
  TabResult *p = (TabResult*)pArg;
  int need;
  int i;
  char *z;




  if( p->nRow==0 && argv!=0 ){
    need = nCol*2;
  }else{
    need = nCol;
  }
  if( p->nData + need > p->nAlloc ){
    char **azNew;
    p->nAlloc = p->nAlloc*2 + need;
    azNew = sqlite3_realloc( p->azResult, sizeof(char*)*p->nAlloc );
    if( azNew==0 ) goto malloc_failed;
    p->azResult = azNew;
  }




  if( p->nRow==0 ){
    p->nColumn = nCol;
    for(i=0; i<nCol; i++){
      z = sqlite3_mprintf("%s", colv[i]);
      if( z==0 ) goto malloc_failed;
      p->azResult[p->nData++] = z;
    }
  }else if( p->nColumn!=nCol ){
    sqlite3_free(p->zErrMsg);
    p->zErrMsg = sqlite3_mprintf(
       "sqlite3_get_table() called with two or more incompatible queries"
    );
    p->rc = SQLITE_ERROR;
    return 1;
  }



  if( argv!=0 ){
    for(i=0; i<nCol; i++){
      if( argv[i]==0 ){
        z = 0;
      }else{
        int n = sqlite3Strlen30(argv[i])+1;
        z = sqlite3_malloc( n );
        if( z==0 ) goto malloc_failed;
        memcpy(z, argv[i], n);
      }
      p->azResult[p->nData++] = z;
    }
    p->nRow++;
  }
  return 0;

malloc_failed:
  p->rc = SQLITE_NOMEM;
  return 1;
}
