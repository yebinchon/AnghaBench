
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;
typedef int phpdbg_breakbase_t ;


 size_t PHPDBG_BREAK_OPCODE ;
 int * PHPDBG_G (int ) ;
 int bp ;
 int strlen (char const*) ;
 char* zend_get_opcode_name (int ) ;
 int zend_hash_func (char const*,int ) ;
 int * zend_hash_index_find_ptr (int *,int ) ;

__attribute__((used)) static inline phpdbg_breakbase_t *phpdbg_find_breakpoint_opcode(zend_uchar opcode)
{
 const char *opname = zend_get_opcode_name(opcode);

 if (!opname) {
  return ((void*)0);
 }

 return zend_hash_index_find_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_OPCODE], zend_hash_func(opname, strlen(opname)));
}
