
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char const u8 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_2__ {char* z; int n; } ;
typedef TYPE_1__ Token ;


 int SQLITE_DYNAMIC ;
 int TK_LP ;
 int TK_SPACE ;
 int TK_USING ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3GetToken (unsigned char const*,int*) ;
 char* sqlite3MPrintf (int *,char*,int,unsigned char const*,unsigned char const*,char*) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void renameTableFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  unsigned char const *zSql = sqlite3_value_text(argv[0]);
  unsigned char const *zTableName = sqlite3_value_text(argv[1]);

  int token;
  Token tname;
  unsigned char const *zCsr = zSql;
  int len = 0;
  char *zRet;

  sqlite3 *db = sqlite3_context_db_handle(context);

  UNUSED_PARAMETER(NotUsed);





  if( zSql ){
    do {
      if( !*zCsr ){

        return;
      }


      tname.z = (char*)zCsr;
      tname.n = len;




      do {
        zCsr += len;
        len = sqlite3GetToken(zCsr, &token);
      } while( token==TK_SPACE );
      assert( len>0 );
    } while( token!=TK_LP && token!=TK_USING );

    zRet = sqlite3MPrintf(db, "%.*s\"%w\"%s", (int)(((u8*)tname.z) - zSql),
       zSql, zTableName, tname.z+tname.n);
    sqlite3_result_text(context, zRet, -1, SQLITE_DYNAMIC);
  }
}
