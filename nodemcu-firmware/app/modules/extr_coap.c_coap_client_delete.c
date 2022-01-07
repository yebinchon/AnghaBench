
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int COAP_METHOD_DELETE ;
 int coap_request (int *,int ) ;

__attribute__((used)) static int coap_client_delete( lua_State* L )
{
  return coap_request(L, COAP_METHOD_DELETE);
}
