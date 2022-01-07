
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* tcp; } ;
struct espconn {TYPE_1__ proto; int state; int type; TYPE_3__* reverse; } ;
typedef int sint8 ;
typedef int os_timer_func_t ;
typedef int lua_State ;
struct TYPE_12__ {unsigned int port; } ;
struct TYPE_13__ {int connected; unsigned int secure; int mqttTimer; void* self_ref; void* cb_connect_fail_ref; void* cb_connect_ref; TYPE_2__ mqtt_state; struct espconn* pesp_conn; } ;
typedef TYPE_3__ lmqtt_userdata ;
struct TYPE_14__ {scalar_t__ addr; } ;
typedef TYPE_4__ ip_addr_t ;
struct TYPE_15__ {unsigned int remote_port; scalar_t__ local_port; int remote_ip; } ;
typedef TYPE_5__ esp_tcp ;
struct TYPE_16__ {scalar_t__ addr; } ;


 int ESPCONN_NONE ;
 int ESPCONN_OK ;
 int ESPCONN_TCP ;
 int IP2STR (scalar_t__*) ;
 scalar_t__ IPADDR_NONE ;
 int IPSTR ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int NODE_DBG (char*,...) ;
 int SWTIMER_REG_CB (scalar_t__,int ) ;
 int SWTIMER_RESUME ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ dns_reconn_count ;
 int espconn_delete (struct espconn*) ;
 int espconn_gethostbyname (struct espconn*,char const*,TYPE_6__*,int ) ;
 scalar_t__ espconn_port () ;
 int espconn_regist_connectcb (struct espconn*,int ) ;
 int espconn_regist_reconcb (struct espconn*,int ) ;
 int free (struct espconn*) ;
 TYPE_6__ host_ip ;
 scalar_t__ ipaddr_addr (char const*) ;
 int luaL_argcheck (int *,TYPE_3__*,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isboolean (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushvalue (int *,int) ;
 unsigned int lua_toboolean (int *,int) ;
 unsigned int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (int ,scalar_t__*,int) ;
 int mqtt_socket_connected ;
 int mqtt_socket_reconnected ;
 scalar_t__ mqtt_socket_timer ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,TYPE_3__*) ;
 int platform_print_deprecation_note (char*,char*) ;
 int socket_connect (struct espconn*) ;
 int socket_dns_found (char const*,TYPE_6__*,struct espconn*) ;
 int socket_dns_foundcb ;

__attribute__((used)) static int mqtt_socket_connect( lua_State* L )
{
  NODE_DBG("enter mqtt_socket_connect.\n");
  lmqtt_userdata *mud = ((void*)0);
  unsigned port = 1883;
  size_t il;
  ip_addr_t ipaddr;
  const char *domain;
  int stack = 1;
  unsigned secure = 0;
  int top = lua_gettop(L);
  sint8 espconn_status;

  mud = (lmqtt_userdata *)luaL_checkudata(L, stack, "mqtt.socket");
  luaL_argcheck(L, mud, stack, "mqtt.socket expected");
  stack++;
  if(mud == ((void*)0))
    return 0;

  if(mud->connected){
    return luaL_error(L, "already connected");
  }

  struct espconn *pesp_conn = mud->pesp_conn;
  if(!pesp_conn) {
    pesp_conn = mud->pesp_conn = (struct espconn *)calloc(1,sizeof(struct espconn));
  } else {
    espconn_delete(pesp_conn);
  }

  if(!pesp_conn)
    return luaL_error(L, "not enough memory");
  if (!pesp_conn->proto.tcp)
    pesp_conn->proto.tcp = (esp_tcp *)calloc(1,sizeof(esp_tcp));
  if(!pesp_conn->proto.tcp){
    free(pesp_conn);
    pesp_conn = mud->pesp_conn = ((void*)0);
    return luaL_error(L, "not enough memory");
  }

  pesp_conn->reverse = mud;
  pesp_conn->type = ESPCONN_TCP;
  pesp_conn->state = ESPCONN_NONE;
  mud->connected = 0;

  if( (stack<=top) && lua_isstring(L,stack) )
  {
    domain = luaL_checklstring( L, stack, &il );

    stack++;
    if (domain == ((void*)0))
    {
      domain = "127.0.0.1";
    }
    ipaddr.addr = ipaddr_addr(domain);
    memcpy(pesp_conn->proto.tcp->remote_ip, &ipaddr.addr, 4);
    NODE_DBG("TCP ip is set: ");
    NODE_DBG(IPSTR, IP2STR(&ipaddr.addr));
    NODE_DBG("\n");
  }

  if ( (stack<=top) && lua_isnumber(L, stack) )
  {
    port = lua_tointeger(L, stack);
    stack++;
    NODE_DBG("TCP port is set: %d.\n", port);
  }
  pesp_conn->proto.tcp->remote_port = port;
  if (pesp_conn->proto.tcp->local_port == 0)
    pesp_conn->proto.tcp->local_port = espconn_port();
  mud->mqtt_state.port = port;

  if ( (stack<=top) && (lua_isnumber(L, stack) || lua_isboolean(L, stack)) )
  {
    if (lua_isnumber(L, stack)) {
      platform_print_deprecation_note("mqtt.connect secure parameter as integer","in the future");
      secure = !!lua_tointeger(L, stack);
    } else {
      secure = lua_toboolean(L, stack);
    }
    stack++;
  } else {
    secure = 0;
  }



  if ( secure )
  {
    return luaL_error(L, "ssl not available");
  }



  if ((stack<=top) && (lua_type(L, stack) == LUA_TFUNCTION || lua_type(L, stack) == LUA_TLIGHTFUNCTION)){
    lua_pushvalue(L, stack);
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
    mud->cb_connect_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }

  stack++;


  if ((stack<=top) && (lua_type(L, stack) == LUA_TFUNCTION || lua_type(L, stack) == LUA_TLIGHTFUNCTION)){
    lua_pushvalue(L, stack);
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
    mud->cb_connect_fail_ref = luaL_ref(L, LUA_REGISTRYINDEX);
    stack++;
  }

  lua_pushvalue(L, 1);
  luaL_unref(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  espconn_status = espconn_regist_connectcb(pesp_conn, mqtt_socket_connected);
  espconn_status |= espconn_regist_reconcb(pesp_conn, mqtt_socket_reconnected);

  os_timer_disarm(&mud->mqttTimer);
  os_timer_setfn(&mud->mqttTimer, (os_timer_func_t *)mqtt_socket_timer, mud);
  SWTIMER_REG_CB(mqtt_socket_timer, SWTIMER_RESUME);




  if((ipaddr.addr == IPADDR_NONE) && (memcmp(domain,"255.255.255.255",16) != 0))
  {
    host_ip.addr = 0;
    dns_reconn_count = 0;
    if(ESPCONN_OK == espconn_gethostbyname(pesp_conn, domain, &host_ip, socket_dns_foundcb)){
      espconn_status |= socket_dns_found(domain, &host_ip, pesp_conn);
    }
  }
  else
  {
    espconn_status |= socket_connect(pesp_conn);
  }

  NODE_DBG("leave mqtt_socket_connect.\n");

  if (espconn_status == ESPCONN_OK) {
    lua_pushboolean(L, 1);
  } else {
    lua_pushboolean(L, 0);
  }
  return 1;
}
