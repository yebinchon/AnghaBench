
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int parse_hexadecimal (char const*,int *) ;

__attribute__((used)) static bool to_address(char const* addr_str, ut16* addr_out) {


 return parse_hexadecimal (addr_str, addr_out);
}
