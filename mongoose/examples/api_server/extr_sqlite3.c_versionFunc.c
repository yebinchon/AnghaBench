
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_STATIC ;
 int UNUSED_PARAMETER2 (int,int **) ;
 int sqlite3_libversion () ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static void versionFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **NotUsed2
){
  UNUSED_PARAMETER2(NotUsed, NotUsed2);


  sqlite3_result_text(context, sqlite3_libversion(), -1, SQLITE_STATIC);
}
