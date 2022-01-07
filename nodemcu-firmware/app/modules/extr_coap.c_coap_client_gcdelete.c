
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int coap_delete (int *,char const*) ;

__attribute__((used)) static int coap_client_gcdelete( lua_State* L )
{
  const char *mt = "coap_client";
  return coap_delete(L, mt);
}
