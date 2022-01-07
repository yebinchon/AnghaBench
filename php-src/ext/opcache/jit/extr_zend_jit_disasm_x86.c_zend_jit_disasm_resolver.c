
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_uintptr_t ;
typedef scalar_t__ uint64_t ;
struct ud {int dummy; } ;
typedef int int64_t ;
struct TYPE_3__ {char const* dli_sname; void* dli_saddr; } ;
typedef TYPE_1__ Dl_info ;


 scalar_t__ dladdr (void*,TYPE_1__*) ;
 char* zend_jit_disasm_find_symbol (scalar_t__,int *) ;

__attribute__((used)) static const char* zend_jit_disasm_resolver(struct ud *ud,
                                            uint64_t addr,
                                            int64_t *offset)
{

 ((void)ud);
 const char *name;
 void *a = (void*)(zend_uintptr_t)(addr);
 Dl_info info;

 name = zend_jit_disasm_find_symbol(addr, offset);
 if (name) {
  return name;
 }

 if (dladdr(a, &info)
  && info.dli_sname != ((void*)0)
  && info.dli_saddr == a) {
  return info.dli_sname;
 }
 return ((void*)0);
}
