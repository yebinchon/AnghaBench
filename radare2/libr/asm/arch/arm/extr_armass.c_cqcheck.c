
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut64 ;


 int C_MATCH_BIT ;
 int DOTN_BIT ;
 int DOTW_BIT ;
 scalar_t__ r_str_startswith (char*,char const*) ;

__attribute__((used)) static ut64 cqcheck(char **input) {
 ut64 res = 0;
 int i;
 ut8 offset = 0;

 const char *conds[] = {
  "eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
  "hi", "ls", "ge", "lt", "gt", "le", "al", "nv", 0
 };
 for (i = 0; conds[i]; i++) {
  if (r_str_startswith (*input, conds[i])) {
   res |= C_MATCH_BIT;
   res |= i << 2;
   *input += 2;
   offset += 2;
   break;
  }
 }
 if (r_str_startswith (*input, ".n")) {
  res |= DOTN_BIT;
  *input += 2;
  offset += 2;
 } else
 if (r_str_startswith (*input, ".w")) {
  res |= DOTW_BIT;
  *input += 2;
  offset += 2;
 }

 if (**input == '\0') {
  return res;
 }
 *input -= offset;
 return 0;
}
