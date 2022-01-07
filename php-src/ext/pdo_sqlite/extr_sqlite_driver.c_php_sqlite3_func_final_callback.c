
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdo_sqlite_func {int fini; int afini; } ;
typedef int sqlite3_context ;


 int do_callback (int *,int *,int ,int *,int *,int) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void php_sqlite3_func_final_callback(sqlite3_context *context)
{
 struct pdo_sqlite_func *func = (struct pdo_sqlite_func*)sqlite3_user_data(context);

 do_callback(&func->afini, &func->fini, 0, ((void*)0), context, 1);
}
