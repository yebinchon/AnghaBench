
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {scalar_t__* aLimit; } ;
typedef TYPE_1__ sqlite3 ;
typedef scalar_t__ i64 ;


 size_t SQLITE_LIMIT_LENGTH ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_result_error_toobig (int *) ;
 int sqlite3_result_zeroblob (int *,int) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 int testcase (int) ;

__attribute__((used)) static void zeroblobFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  i64 n;
  sqlite3 *db = sqlite3_context_db_handle(context);
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  n = sqlite3_value_int64(argv[0]);
  testcase( n==db->aLimit[SQLITE_LIMIT_LENGTH] );
  testcase( n==db->aLimit[SQLITE_LIMIT_LENGTH]+1 );
  if( n>db->aLimit[SQLITE_LIMIT_LENGTH] ){
    sqlite3_result_error_toobig(context);
  }else{
    sqlite3_result_zeroblob(context, (int)n);
  }
}
