
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int symbols ;
 int zend_jit_disasm_destroy_symbols (int ) ;

__attribute__((used)) static void zend_jit_disasm_shutdown(void)
{
 zend_jit_disasm_destroy_symbols(symbols);
}
