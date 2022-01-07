
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;


 size_t R_ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *reg32_to_name(ut8 reg) {
 const char * const names[] = {"eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"};
 return reg < R_ARRAY_SIZE (names) ? names[reg] : "unk";
}
