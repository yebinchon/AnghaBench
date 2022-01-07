
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_3__ {int (* op_array_ctor ) (int *) ;} ;
typedef TYPE_1__ zend_extension ;


 int stub1 (int *) ;

__attribute__((used)) static void zend_extension_op_array_ctor_handler(zend_extension *extension, zend_op_array *op_array)
{
 if (extension->op_array_ctor) {
  extension->op_array_ctor(op_array);
 }
}
