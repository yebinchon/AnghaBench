
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int CollSeq ;


 int UNUSED_PARAMETER (int) ;
 int * sqlite3GetFuncCollSeq (int *) ;
 scalar_t__ sqlite3MemCompare (int *,int *,int *) ;
 int sqlite3_result_value (int *,int *) ;

__attribute__((used)) static void nullifFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  CollSeq *pColl = sqlite3GetFuncCollSeq(context);
  UNUSED_PARAMETER(NotUsed);
  if( sqlite3MemCompare(argv[0], argv[1], pColl)!=0 ){
    sqlite3_result_value(context, argv[0]);
  }
}
