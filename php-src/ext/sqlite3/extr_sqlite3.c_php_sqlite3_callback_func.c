
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_2__ {int func; int afunc; } ;
typedef TYPE_1__ php_sqlite3_func ;


 int sqlite3_do_callback (int *,int *,int,int **,int *,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void php_sqlite3_callback_func(sqlite3_context *context, int argc, sqlite3_value **argv)
{
 php_sqlite3_func *func = (php_sqlite3_func *)sqlite3_user_data(context);

 sqlite3_do_callback(&func->afunc, &func->func, argc, argv, context, 0);
}
