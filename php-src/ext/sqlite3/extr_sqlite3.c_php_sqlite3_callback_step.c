
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int step; int astep; } ;
typedef TYPE_1__ php_sqlite3_func ;
struct TYPE_4__ {int row_count; } ;
typedef TYPE_2__ php_sqlite3_agg_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_do_callback (int *,int *,int,int **,int *,int) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void php_sqlite3_callback_step(sqlite3_context *context, int argc, sqlite3_value **argv)
{
 php_sqlite3_func *func = (php_sqlite3_func *)sqlite3_user_data(context);
 php_sqlite3_agg_context *agg_context = (php_sqlite3_agg_context *)sqlite3_aggregate_context(context, sizeof(php_sqlite3_agg_context));

 agg_context->row_count++;

 sqlite3_do_callback(&func->astep, &func->step, argc, argv, context, 1);
}
