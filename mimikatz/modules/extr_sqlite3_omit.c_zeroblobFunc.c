
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef scalar_t__ i64 ;


 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_zeroblob64 (int *,scalar_t__) ;
 scalar_t__ sqlite3_value_int64 (int *) ;

__attribute__((used)) static void zeroblobFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  i64 n;
  int rc;
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  n = sqlite3_value_int64(argv[0]);
  if( n<0 ) n = 0;
  rc = sqlite3_result_zeroblob64(context, n);
  if( rc ){
    sqlite3_result_error_code(context, rc);
  }
}
