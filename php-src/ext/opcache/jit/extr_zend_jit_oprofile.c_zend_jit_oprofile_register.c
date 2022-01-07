
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_uintptr_t ;
typedef int uint64_t ;


 scalar_t__ op_agent ;
 int op_write_native_code (scalar_t__,char const*,int ,void const*,size_t) ;

__attribute__((used)) static void zend_jit_oprofile_register(const char *name,
                                       const void *start,
                                       size_t size)
{
 if (op_agent) {
  op_write_native_code(op_agent, name, (uint64_t)(zend_uintptr_t)start, start, size);
 }
}
