
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * udp; int * tcp; } ;
struct espconn {TYPE_2__* reverse; int state; TYPE_1__ proto; int type; } ;
typedef int lua_State ;
struct TYPE_4__ {struct espconn* pesp_conn; int self_ref; } ;
typedef TYPE_2__ lcoap_userdata ;
typedef int esp_udp ;


 int ESPCONN_NONE ;
 int ESPCONN_UDP ;
 int LUA_NOREF ;
 int NODE_DBG (char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct espconn*) ;
 int luaL_error (int *,char*) ;
 int luaL_getmetatable (int *,char const*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static int coap_create( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = ((void*)0);
  lcoap_userdata *cud;
  unsigned type;
  int stack = 1;


  cud = (lcoap_userdata *)lua_newuserdata(L, sizeof(lcoap_userdata));

  cud->self_ref = LUA_NOREF;
  cud->pesp_conn = ((void*)0);


  luaL_getmetatable(L, mt);
  lua_setmetatable(L, -2);


  pesp_conn = (struct espconn *)calloc(1,sizeof(struct espconn));
  if(!pesp_conn)
    return luaL_error(L, "not enough memory");

  cud->pesp_conn = pesp_conn;

  pesp_conn->type = ESPCONN_UDP;
  pesp_conn->proto.tcp = ((void*)0);
  pesp_conn->proto.udp = ((void*)0);

  pesp_conn->proto.udp = (esp_udp *)calloc(1,sizeof(esp_udp));
  if(!pesp_conn->proto.udp){
    free(pesp_conn);
    cud->pesp_conn = pesp_conn = ((void*)0);
    return luaL_error(L, "not enough memory");
  }
  pesp_conn->state = ESPCONN_NONE;
  NODE_DBG("UDP server/client is set.\n");

  pesp_conn->reverse = cud;

  NODE_DBG("coap_create is called.\n");
  return 1;
}
