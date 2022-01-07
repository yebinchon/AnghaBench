
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sname; int * def; int * root; } ;
typedef TYPE_1__ MYSQLND_FIELD ;


 int zend_string_release_ex (scalar_t__,int ) ;

__attribute__((used)) static void
php_mysqlnd_free_field_metadata(MYSQLND_FIELD *meta)
{
 if (meta) {
  meta->root = ((void*)0);
  meta->def = ((void*)0);
  if (meta->sname) {
   zend_string_release_ex(meta->sname, 0);
  }
 }
}
