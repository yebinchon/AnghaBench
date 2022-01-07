
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_STATIC ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3_compileoption_get (int) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void compileoptiongetFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int n;
  assert( argc==1 );
  UNUSED_PARAMETER(argc);



  n = sqlite3_value_int(argv[0]);
  sqlite3_result_text(context, sqlite3_compileoption_get(n), -1, SQLITE_STATIC);
}
