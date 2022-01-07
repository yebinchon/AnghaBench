
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct compareInfo {int dummy; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int* aLimit; } ;
typedef TYPE_1__ sqlite3 ;


 size_t SQLITE_LIMIT_LIKE_PATTERN_LENGTH ;
 int assert (int) ;
 int patternCompare (unsigned char const*,unsigned char const*,struct compareInfo*,int ) ;
 int sqlite3Utf8CharLen (char*,int) ;
 int sqlite3Utf8Read (unsigned char const**) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_like_count ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,int ) ;
 struct compareInfo* sqlite3_user_data (int *) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char const* sqlite3_value_text (int *) ;
 int testcase (int) ;

__attribute__((used)) static void likeFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zA, *zB;
  u32 escape = 0;
  int nPat;
  sqlite3 *db = sqlite3_context_db_handle(context);

  zB = sqlite3_value_text(argv[0]);
  zA = sqlite3_value_text(argv[1]);




  nPat = sqlite3_value_bytes(argv[0]);
  testcase( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] );
  testcase( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH]+1 );
  if( nPat > db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] ){
    sqlite3_result_error(context, "LIKE or GLOB pattern too complex", -1);
    return;
  }
  assert( zB==sqlite3_value_text(argv[0]) );

  if( argc==3 ){



    const unsigned char *zEsc = sqlite3_value_text(argv[2]);
    if( zEsc==0 ) return;
    if( sqlite3Utf8CharLen((char*)zEsc, -1)!=1 ){
      sqlite3_result_error(context,
          "ESCAPE expression must be a single character", -1);
      return;
    }
    escape = sqlite3Utf8Read(&zEsc);
  }
  if( zA && zB ){
    struct compareInfo *pInfo = sqlite3_user_data(context);




    sqlite3_result_int(context, patternCompare(zB, zA, pInfo, escape));
  }
}
