
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;



__attribute__((used)) static bool parse_hexadecimal(char const* hexstr, ut16* out) {
 if ( !hexstr || hexstr[0] != '0'
  || !(hexstr[1] == 'x' || hexstr[1] == 'X')) {
  return 0;
 }
 *out = 0;
 char const*p;
 for (p = hexstr + 2; p < hexstr + 6 && *p ; p += 1) {
  *out <<= 4;
  if ( '0' <= *p && *p <= '9' ) {
   *out |= *p - '0';
  } else if ( 'a' <= *p && *p <= 'f' ) {
   *out |= *p - 'a' + 10;
  } else if ( 'A' <= *p && *p <= 'F' ) {
   *out |= *p - 'A' + 10;
  } else {
   return 0;
  }
 }
 return ! *p;
}
