
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct espconn {int dummy; } ;
typedef int lua_State ;
struct TYPE_8__ {scalar_t__ self_ref; TYPE_5__* pesp_conn; } ;
typedef TYPE_3__ lcoap_userdata ;
struct TYPE_7__ {TYPE_1__* udp; } ;
struct TYPE_9__ {TYPE_2__ proto; } ;
struct TYPE_6__ {scalar_t__ local_port; scalar_t__ remote_port; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int espconn_delete (TYPE_5__*) ;
 int luaL_argcheck (int *,TYPE_3__*,int,char*) ;
 scalar_t__ luaL_checkudata (int *,int,char const*) ;
 int luaL_unref (int *,int ,scalar_t__) ;

__attribute__((used)) static int coap_close( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = ((void*)0);
  lcoap_userdata *cud;

  cud = (lcoap_userdata *)luaL_checkudata(L, 1, mt);
  luaL_argcheck(L, cud, 1, "Server/Client expected");
  if(cud==((void*)0)){
    NODE_DBG("userdata is nil.\n");
    return 0;
  }

  if(cud->pesp_conn)
  {
    if(cud->pesp_conn->proto.udp->remote_port || cud->pesp_conn->proto.udp->local_port)
      espconn_delete(cud->pesp_conn);
  }

  if(LUA_NOREF!=cud->self_ref){
    luaL_unref(L, LUA_REGISTRYINDEX, cud->self_ref);
    cud->self_ref = LUA_NOREF;
  }

  NODE_DBG("coap_close is called.\n");
  return 0;
}
