
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;





 int SQLITE_STATIC ;

 int UNUSED_PARAMETER (int) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void typeofFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  const char *z = 0;
  UNUSED_PARAMETER(NotUsed);
  switch( sqlite3_value_type(argv[0]) ){
    case 129: z = "integer"; break;
    case 128: z = "text"; break;
    case 130: z = "real"; break;
    case 131: z = "blob"; break;
    default: z = "null"; break;
  }
  sqlite3_result_text(context, z, -1, SQLITE_STATIC);
}
