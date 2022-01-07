
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int r ;


 int LARGEST_INT64 ;
 int UNUSED_PARAMETER2 (int,int **) ;
 int sqlite3_randomness (int,int*) ;
 int sqlite3_result_int64 (int *,int) ;

__attribute__((used)) static void randomFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **NotUsed2
){
  sqlite_int64 r;
  UNUSED_PARAMETER2(NotUsed, NotUsed2);
  sqlite3_randomness(sizeof(r), &r);
  if( r<0 ){
    r = -(r & LARGEST_INT64);
  }
  sqlite3_result_int64(context, r);
}
