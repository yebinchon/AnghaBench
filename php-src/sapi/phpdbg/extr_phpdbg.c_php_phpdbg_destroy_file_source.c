
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {struct TYPE_3__* buf; int op_array; } ;
typedef TYPE_1__ phpdbg_file_source ;


 scalar_t__ Z_PTR_P (int *) ;
 int destroy_op_array (int *) ;
 int efree (TYPE_1__*) ;

__attribute__((used)) static void php_phpdbg_destroy_file_source(zval *data)
{
 phpdbg_file_source *source = (phpdbg_file_source *) Z_PTR_P(data);
 destroy_op_array(&source->op_array);
 if (source->buf) {
  efree(source->buf);
 }
 efree(source);
}
