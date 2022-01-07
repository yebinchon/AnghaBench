
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct espconn {int dummy; } ;
typedef int lua_State ;
struct TYPE_7__ {scalar_t__ self_ref; TYPE_4__* pesp_conn; } ;
typedef TYPE_2__ lcoap_userdata ;
struct TYPE_6__ {TYPE_4__* udp; } ;
struct TYPE_8__ {TYPE_1__ proto; scalar_t__ local_port; scalar_t__ remote_port; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int espconn_delete (TYPE_4__*) ;
 int free (TYPE_4__*) ;
 int luaL_argcheck (int *,TYPE_2__*,int,char*) ;
 scalar_t__ luaL_checkudata (int *,int,char const*) ;
 int luaL_unref (int *,int ,scalar_t__) ;

__attribute__((used)) static int coap_delete( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = ((void*)0);
  lcoap_userdata *cud;

  cud = (lcoap_userdata *)luaL_checkudata(L, 1, mt);
  luaL_argcheck(L, cud, 1, "Server/Client expected");
  if(cud==((void*)0)){
    NODE_DBG("userdata is nil.\n");
    return 0;
  }


  if(LUA_NOREF!=cud->self_ref){
    luaL_unref(L, LUA_REGISTRYINDEX, cud->self_ref);
    cud->self_ref = LUA_NOREF;
  }

  if(cud->pesp_conn)
  {
    if(cud->pesp_conn->proto.udp->remote_port || cud->pesp_conn->proto.udp->local_port)
      espconn_delete(cud->pesp_conn);
    free(cud->pesp_conn->proto.udp);
    cud->pesp_conn->proto.udp = ((void*)0);
    free(cud->pesp_conn);
    cud->pesp_conn = ((void*)0);
  }

  NODE_DBG("coap_delete is called.\n");
  return 0;
}
