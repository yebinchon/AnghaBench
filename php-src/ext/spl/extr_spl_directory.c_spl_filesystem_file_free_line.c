
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_zval; int * current_line; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int efree (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_filesystem_file_free_line(spl_filesystem_object *intern)
{
 if (intern->u.file.current_line) {
  efree(intern->u.file.current_line);
  intern->u.file.current_line = ((void*)0);
 }
 if (!Z_ISUNDEF(intern->u.file.current_zval)) {
  zval_ptr_dtor(&intern->u.file.current_zval);
  ZVAL_UNDEF(&intern->u.file.current_zval);
 }
}
