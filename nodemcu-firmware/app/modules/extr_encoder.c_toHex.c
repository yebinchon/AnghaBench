
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;


 scalar_t__ luaM_malloc (int *,size_t) ;
 void* to_hex_nibble (int const) ;

__attribute__((used)) static uint8 *toHex ( lua_State* L, const uint8 *msg, size_t *len){
  int i, n = *len;
  *len <<= 1;
  uint8 *q, *out = (uint8 *)luaM_malloc(L, *len);
  for (i = 0, q = out; i < n; i++) {
    *q++ = to_hex_nibble(msg[i] >> 4);
    *q++ = to_hex_nibble(msg[i] & 0xf);
  }
  return out;
}
