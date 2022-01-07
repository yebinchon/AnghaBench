
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NODE_DBG (char*) ;

__attribute__((used)) static int coap_on( lua_State* L, const char* mt )
{
  NODE_DBG("coap_on is called.\n");
  return 0;
}
