
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdo_sqlite_func {int func; int afunc; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int do_callback (int *,int *,int,int **,int *,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void php_sqlite3_func_callback(sqlite3_context *context, int argc,
 sqlite3_value **argv)
{
 struct pdo_sqlite_func *func = (struct pdo_sqlite_func*)sqlite3_user_data(context);

 do_callback(&func->afunc, &func->func, argc, argv, context, 0);
}
