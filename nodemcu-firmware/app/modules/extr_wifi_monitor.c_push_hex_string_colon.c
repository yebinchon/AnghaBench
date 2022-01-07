
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;


 int push_hex_string (int *,int const*,int,char*) ;

__attribute__((used)) static void push_hex_string_colon(lua_State *L, const uint8 *buf, int len) {
  push_hex_string(L, buf, len, ":");
}
