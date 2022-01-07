
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zend_gdb_unregister_all () ;

__attribute__((used)) static int zend_jit_gdb_unregister(void)
{
 zend_gdb_unregister_all();
 return 1;
}
