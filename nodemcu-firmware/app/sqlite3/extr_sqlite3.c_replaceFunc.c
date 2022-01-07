
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int* aLimit; scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int i64 ;


 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_MAX_LENGTH ;
 scalar_t__ SQLITE_NULL ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 unsigned char* contextMalloc (int *,int) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_free (unsigned char*) ;
 unsigned char* sqlite3_realloc64 (unsigned char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_error_toobig (int *) ;
 int sqlite3_result_text (int *,char*,int,int (*) (unsigned char*)) ;
 int sqlite3_result_value (int *,int *) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char const* sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 int testcase (int) ;

__attribute__((used)) static void replaceFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zStr;
  const unsigned char *zPattern;
  const unsigned char *zRep;
  unsigned char *zOut;
  int nStr;
  int nPattern;
  int nRep;
  i64 nOut;
  int loopLimit;
  int i, j;

  assert( argc==3 );
  UNUSED_PARAMETER(argc);
  zStr = sqlite3_value_text(argv[0]);
  if( zStr==0 ) return;
  nStr = sqlite3_value_bytes(argv[0]);
  assert( zStr==sqlite3_value_text(argv[0]) );
  zPattern = sqlite3_value_text(argv[1]);
  if( zPattern==0 ){
    assert( sqlite3_value_type(argv[1])==SQLITE_NULL
            || sqlite3_context_db_handle(context)->mallocFailed );
    return;
  }
  if( zPattern[0]==0 ){
    assert( sqlite3_value_type(argv[1])!=SQLITE_NULL );
    sqlite3_result_value(context, argv[0]);
    return;
  }
  nPattern = sqlite3_value_bytes(argv[1]);
  assert( zPattern==sqlite3_value_text(argv[1]) );
  zRep = sqlite3_value_text(argv[2]);
  if( zRep==0 ) return;
  nRep = sqlite3_value_bytes(argv[2]);
  assert( zRep==sqlite3_value_text(argv[2]) );
  nOut = nStr + 1;
  assert( nOut<SQLITE_MAX_LENGTH );
  zOut = contextMalloc(context, (i64)nOut);
  if( zOut==0 ){
    return;
  }
  loopLimit = nStr - nPattern;
  for(i=j=0; i<=loopLimit; i++){
    if( zStr[i]!=zPattern[0] || memcmp(&zStr[i], zPattern, nPattern) ){
      zOut[j++] = zStr[i];
    }else{
      u8 *zOld;
      sqlite3 *db = sqlite3_context_db_handle(context);
      nOut += nRep - nPattern;
      testcase( nOut-1==db->aLimit[SQLITE_LIMIT_LENGTH] );
      testcase( nOut-2==db->aLimit[SQLITE_LIMIT_LENGTH] );
      if( nOut-1>db->aLimit[SQLITE_LIMIT_LENGTH] ){
        sqlite3_result_error_toobig(context);
        sqlite3_free(zOut);
        return;
      }
      zOld = zOut;
      zOut = sqlite3_realloc64(zOut, (int)nOut);
      if( zOut==0 ){
        sqlite3_result_error_nomem(context);
        sqlite3_free(zOld);
        return;
      }
      memcpy(&zOut[j], zRep, nRep);
      j += nRep;
      i += nPattern-1;
    }
  }
  assert( j+nStr-i+1==nOut );
  memcpy(&zOut[j], &zStr[i], nStr-i);
  j += nStr - i;
  assert( j<=nOut );
  zOut[j] = 0;
  sqlite3_result_text(context, (char*)zOut, j, sqlite3_free);
}
