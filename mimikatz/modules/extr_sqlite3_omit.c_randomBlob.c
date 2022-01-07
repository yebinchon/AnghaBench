
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 unsigned char* contextMalloc (int *,int) ;
 int sqlite3_free ;
 int sqlite3_randomness (int,unsigned char*) ;
 int sqlite3_result_blob (int *,char*,int,int ) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static void randomBlob(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 n;
  unsigned char *p;
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  n = sqlite3_value_int64(argv[0]);
  if( n<1 ){
    n = 1;
  }
  p = contextMalloc(context, n);
  if( p ){
    sqlite3_randomness(n, p);
    sqlite3_result_blob(context, (char*)p, n, sqlite3_free);
  }
}
