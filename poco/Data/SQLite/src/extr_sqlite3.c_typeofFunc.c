
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int ArraySize (char const**) ;
 int SQLITE_BLOB ;
 int SQLITE_FLOAT ;
 int SQLITE_INTEGER ;
 int SQLITE_NULL ;
 int SQLITE_STATIC ;
 int SQLITE_TEXT ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void typeofFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  static const char *azType[] = { "integer", "real", "text", "blob", "null" };
  int i = sqlite3_value_type(argv[0]) - 1;
  UNUSED_PARAMETER(NotUsed);
  assert( i>=0 && i<ArraySize(azType) );
  assert( SQLITE_INTEGER==1 );
  assert( SQLITE_FLOAT==2 );
  assert( SQLITE_TEXT==3 );
  assert( SQLITE_BLOB==4 );
  assert( SQLITE_NULL==5 );




  sqlite3_result_text(context, azType[i], -1, SQLITE_STATIC);
}
