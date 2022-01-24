#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* udp; } ;
struct espconn {TYPE_2__ proto; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {scalar_t__ self_ref; struct espconn* pesp_conn; } ;
typedef  TYPE_3__ lcoap_userdata ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_4__ ip_addr_t ;
struct TYPE_6__ {unsigned int local_port; int /*<<< orphan*/  local_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSTR ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  coap_received ; 
 int /*<<< orphan*/  coap_sent ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int,char*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = NULL;
  lcoap_userdata *cud;
  unsigned port;
  size_t il;
  ip_addr_t ipaddr;

  cud = (lcoap_userdata *)FUNC9(L, 1, mt);
  FUNC6(L, cud, 1, "Server/Client expected");
  if(cud==NULL){
    FUNC1("userdata is nil.\n");
    return 0;
  }

  pesp_conn = cud->pesp_conn;
  port = FUNC7( L, 2 );
  pesp_conn->proto.udp->local_port = port;
  FUNC1("UDP port is set: %d.\n", port);

  if( FUNC11(L,3) )   // deal with the ip string
  {
    const char *ip = FUNC8( L, 3, &il );
    if (ip == NULL)
    {
      ip = "0.0.0.0";
    }
    ipaddr.addr = FUNC5(ip);
    FUNC13(pesp_conn->proto.udp->local_ip, &ipaddr.addr, 4);
    FUNC1("UDP ip is set: ");
    FUNC1(IPSTR, FUNC0(&ipaddr.addr));
    FUNC1("\n");
  }

  if(LUA_NOREF==cud->self_ref){
    FUNC12(L, 1);  // copy to the top of stack
    cud->self_ref = FUNC10(L, LUA_REGISTRYINDEX);
  }

  FUNC3(pesp_conn, coap_received);
  FUNC4(pesp_conn, coap_sent);
  FUNC2(pesp_conn);

  FUNC1("Coap Server started on port: %d\n", port);
  FUNC1("coap_start is called.\n");
  return 0;
}