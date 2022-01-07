
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int parse_hexadecimal (char const*,int *) ;

__attribute__((used)) static bool resolve_immediate(char const* imm_str, ut16* imm_out) {


 return parse_hexadecimal (imm_str, imm_out);
}
