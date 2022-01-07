
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int parse_hexadecimal (char const*,int*) ;

__attribute__((used)) static bool address_direct(char const* addr_str, ut8* addr_out) {
 ut16 addr_big;


 if ( !parse_hexadecimal (addr_str, &addr_big)
  || (0xFF < addr_big)) {
  return 0;
 }
 *addr_out = addr_big;
 return 1;
}
