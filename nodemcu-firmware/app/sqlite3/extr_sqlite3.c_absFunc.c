
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int i64 ;


 int SMALLEST_INT64 ;


 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_null (int *) ;
 double sqlite3_value_double (int *) ;
 int sqlite3_value_int64 (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void absFunc(sqlite3_context *context, int argc, sqlite3_value **argv){
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  switch( sqlite3_value_type(argv[0]) ){
    case 129: {
      i64 iVal = sqlite3_value_int64(argv[0]);
      if( iVal<0 ){
        if( iVal==SMALLEST_INT64 ){



          sqlite3_result_error(context, "integer overflow", -1);
          return;
        }
        iVal = -iVal;
      }
      sqlite3_result_int64(context, iVal);
      break;
    }
    case 128: {

      sqlite3_result_null(context);
      break;
    }
    default: {





      double rVal = sqlite3_value_double(argv[0]);
      if( rVal<0 ) rVal = -rVal;
      sqlite3_result_double(context, rVal);
      break;
    }
  }
}
