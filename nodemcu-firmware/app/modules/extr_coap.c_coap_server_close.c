
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int coap_close (int *,char const*) ;

__attribute__((used)) static int coap_server_close( lua_State* L )
{
  const char *mt = "coap_server";
  return coap_close(L, mt);
}
