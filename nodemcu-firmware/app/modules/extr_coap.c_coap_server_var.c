
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int coap_regist (int *,char const*,int) ;

__attribute__((used)) static int coap_server_var( lua_State* L )
{
  const char *mt = "coap_server";
  return coap_regist(L, mt, 1);
}
