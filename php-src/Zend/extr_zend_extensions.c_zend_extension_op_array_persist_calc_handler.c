
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op_array; int size; } ;
typedef TYPE_1__ zend_extension_persist_data ;
struct TYPE_6__ {scalar_t__ (* op_array_persist_calc ) (int ) ;} ;
typedef TYPE_2__ zend_extension ;


 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void zend_extension_op_array_persist_calc_handler(zend_extension *extension, zend_extension_persist_data *data)
{
 if (extension->op_array_persist_calc) {
  data->size += extension->op_array_persist_calc(data->op_array);
 }
}
