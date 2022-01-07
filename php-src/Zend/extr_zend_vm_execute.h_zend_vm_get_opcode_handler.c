
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zend_uchar ;
typedef int zend_op ;


 void const** zend_opcode_handlers ;
 int * zend_spec_handlers ;
 size_t zend_vm_get_opcode_handler_idx (int ,int const*) ;

__attribute__((used)) static const void *zend_vm_get_opcode_handler(zend_uchar opcode, const zend_op* op)
{
 return zend_opcode_handlers[zend_vm_get_opcode_handler_idx(zend_spec_handlers[opcode], op)];
}
