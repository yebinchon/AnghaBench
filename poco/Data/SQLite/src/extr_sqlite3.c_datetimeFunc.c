
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zBuf ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {scalar_t__ s; int m; int h; int D; int M; int Y; } ;
typedef TYPE_1__ DateTime ;


 int SQLITE_TRANSIENT ;
 int computeYMD_HMS (TYPE_1__*) ;
 scalar_t__ isDate (int *,int,int **,TYPE_1__*) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void datetimeFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  DateTime x;
  if( isDate(context, argc, argv, &x)==0 ){
    char zBuf[100];
    computeYMD_HMS(&x);
    sqlite3_snprintf(sizeof(zBuf), zBuf, "%04d-%02d-%02d %02d:%02d:%02d",
                     x.Y, x.M, x.D, x.h, x.m, (int)(x.s));
    sqlite3_result_text(context, zBuf, -1, SQLITE_TRANSIENT);
  }
}
