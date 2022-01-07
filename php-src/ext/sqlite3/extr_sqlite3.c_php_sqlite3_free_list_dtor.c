
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* stmt_obj; } ;
typedef TYPE_2__ php_sqlite3_free_list ;
struct TYPE_3__ {scalar_t__ initialised; int stmt; } ;


 int efree (void*) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static void php_sqlite3_free_list_dtor(void **item)
{
 php_sqlite3_free_list *free_item = (php_sqlite3_free_list *)*item;

 if (free_item->stmt_obj && free_item->stmt_obj->initialised) {
  sqlite3_finalize(free_item->stmt_obj->stmt);
  free_item->stmt_obj->initialised = 0;
 }
 efree(*item);
}
