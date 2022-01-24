#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* tcp; } ;
struct espconn {TYPE_1__ proto; int /*<<< orphan*/  state; int /*<<< orphan*/  type; TYPE_3__* reverse; } ;
typedef  int /*<<< orphan*/  sint8 ;
typedef  int /*<<< orphan*/  os_timer_func_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {unsigned int port; } ;
struct TYPE_13__ {int connected; unsigned int secure; int /*<<< orphan*/  mqttTimer; void* self_ref; void* cb_connect_fail_ref; void* cb_connect_ref; TYPE_2__ mqtt_state; struct espconn* pesp_conn; } ;
typedef  TYPE_3__ lmqtt_userdata ;
struct TYPE_14__ {scalar_t__ addr; } ;
typedef  TYPE_4__ ip_addr_t ;
struct TYPE_15__ {unsigned int remote_port; scalar_t__ local_port; int /*<<< orphan*/  remote_ip; } ;
typedef  TYPE_5__ esp_tcp ;
struct TYPE_16__ {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESPCONN_NONE ; 
 int /*<<< orphan*/  ESPCONN_OK ; 
 int /*<<< orphan*/  ESPCONN_TCP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ IPADDR_NONE ; 
 int /*<<< orphan*/  IPSTR ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ dns_reconn_count ; 
 int /*<<< orphan*/  FUNC4 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC5 (struct espconn*,char const*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct espconn*) ; 
 TYPE_6__ host_ip ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,int,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC23 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC24 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC26 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  mqtt_socket_connected ; 
 int /*<<< orphan*/  mqtt_socket_reconnected ; 
 scalar_t__ mqtt_socket_timer ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC32 (char const*,TYPE_6__*,struct espconn*) ; 
 int /*<<< orphan*/  socket_dns_foundcb ; 

__attribute__((used)) static int FUNC33( lua_State* L )
{
  FUNC1("enter mqtt_socket_connect.\n");
  lmqtt_userdata *mud = NULL;
  unsigned port = 1883;
  size_t il;
  ip_addr_t ipaddr;
  const char *domain;
  int stack = 1;
  unsigned secure = 0;
  int top = FUNC17(L);
  sint8 espconn_status;

  mud = (lmqtt_userdata *)FUNC13(L, stack, "mqtt.socket");
  FUNC11(L, mud, stack, "mqtt.socket expected");
  stack++;
  if(mud == NULL)
    return 0;

  if(mud->connected){
    return FUNC14(L, "already connected");
  }

  struct espconn *pesp_conn = mud->pesp_conn;
  if(!pesp_conn) {
    pesp_conn = mud->pesp_conn = (struct espconn *)FUNC3(1,sizeof(struct espconn));
  } else {
    FUNC4(pesp_conn);
  }

  if(!pesp_conn)
    return FUNC14(L, "not enough memory");
  if (!pesp_conn->proto.tcp)
    pesp_conn->proto.tcp = (esp_tcp *)FUNC3(1,sizeof(esp_tcp));
  if(!pesp_conn->proto.tcp){
    FUNC9(pesp_conn);
    pesp_conn = mud->pesp_conn = NULL;
    return FUNC14(L, "not enough memory");
  }
  // reverse is for the callback function
  pesp_conn->reverse = mud;
  pesp_conn->type = ESPCONN_TCP;
  pesp_conn->state = ESPCONN_NONE;
  mud->connected = false;

  if( (stack<=top) && FUNC20(L,stack) )   // deal with the domain string
  {
    domain = FUNC12( L, stack, &il );

    stack++;
    if (domain == NULL)
    {
      domain = "127.0.0.1";
    }
    ipaddr.addr = FUNC10(domain);
    FUNC27(pesp_conn->proto.tcp->remote_ip, &ipaddr.addr, 4);
    FUNC1("TCP ip is set: ");
    FUNC1(IPSTR, FUNC0(&ipaddr.addr));
    FUNC1("\n");
  }

  if ( (stack<=top) && FUNC19(L, stack) )
  {
    port = FUNC24(L, stack);
    stack++;
    FUNC1("TCP port is set: %d.\n", port);
  }
  pesp_conn->proto.tcp->remote_port = port;
  if (pesp_conn->proto.tcp->local_port == 0)
    pesp_conn->proto.tcp->local_port = FUNC6();
  mud->mqtt_state.port = port;

  if ( (stack<=top) && (FUNC19(L, stack) || FUNC18(L, stack)) )
  {
    if (FUNC19(L, stack)) {
      FUNC30("mqtt.connect secure parameter as integer","in the future");
      secure = !!FUNC24(L, stack);
    } else {
      secure = FUNC23(L, stack);
    }
    stack++;
  } else {
    secure = 0; // default to 0
  }
#ifdef CLIENT_SSL_ENABLE
  mud->secure = secure; // save
#else
  if ( secure )
  {
    return FUNC14(L, "ssl not available");
  }
#endif

  // call back function when a connection is obtained, tcp only
  if ((stack<=top) && (FUNC25(L, stack) == LUA_TFUNCTION || FUNC25(L, stack) == LUA_TLIGHTFUNCTION)){
    FUNC22(L, stack);  // copy argument (func) to the top of stack
    FUNC16(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
    mud->cb_connect_ref = FUNC15(L, LUA_REGISTRYINDEX);
  }

  stack++;

  // call back function when a connection fails
  if ((stack<=top) && (FUNC25(L, stack) == LUA_TFUNCTION || FUNC25(L, stack) == LUA_TLIGHTFUNCTION)){
    FUNC22(L, stack);  // copy argument (func) to the top of stack
    FUNC16(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
    mud->cb_connect_fail_ref = FUNC15(L, LUA_REGISTRYINDEX);
    stack++;
  }

  FUNC22(L, 1);  // copy userdata to the top of stack
  FUNC16(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = FUNC15(L, LUA_REGISTRYINDEX);

  espconn_status = FUNC7(pesp_conn, mqtt_socket_connected);
  espconn_status |= FUNC8(pesp_conn, mqtt_socket_reconnected);

  FUNC28(&mud->mqttTimer);
  FUNC29(&mud->mqttTimer, (os_timer_func_t *)mqtt_socket_timer, mud);
  FUNC2(mqtt_socket_timer, SWTIMER_RESUME);
    //I assume that mqtt_socket_timer connects to the mqtt server, but I'm not really sure what impact light_sleep will have on it.
    //My guess: If in doubt, resume the timer
  // timer started in socket_connect()

  if((ipaddr.addr == IPADDR_NONE) && (FUNC26(domain,"255.255.255.255",16) != 0))
  {
    host_ip.addr = 0;
    dns_reconn_count = 0;
    if(ESPCONN_OK == FUNC5(pesp_conn, domain, &host_ip, socket_dns_foundcb)){
      espconn_status |= FUNC32(domain, &host_ip, pesp_conn);  // ip is returned in host_ip.
    }
  }
  else
  {
    espconn_status |= FUNC31(pesp_conn);
  }

  FUNC1("leave mqtt_socket_connect.\n");

  if (espconn_status == ESPCONN_OK) {
    FUNC21(L, 1);
  } else {
    FUNC21(L, 0);
  }
  return 1;
}