#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * udp; int /*<<< orphan*/ * tcp; } ;
struct espconn {TYPE_2__* reverse; int /*<<< orphan*/  state; TYPE_1__ proto; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {struct espconn* pesp_conn; int /*<<< orphan*/  self_ref; } ;
typedef  TYPE_2__ lcoap_userdata ;
typedef  int /*<<< orphan*/  esp_udp ;

/* Variables and functions */
 int /*<<< orphan*/  ESPCONN_NONE ; 
 int /*<<< orphan*/  ESPCONN_UDP ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = NULL;
  lcoap_userdata *cud;
  unsigned type;
  int stack = 1;

  // create a object
  cud = (lcoap_userdata *)FUNC5(L, sizeof(lcoap_userdata));
  // pre-initialize it, in case of errors
  cud->self_ref = LUA_NOREF;
  cud->pesp_conn = NULL;

  // set its metatable
  FUNC4(L, mt);
  FUNC6(L, -2);

  // create the espconn struct
  pesp_conn = (struct espconn *)FUNC1(1,sizeof(struct espconn));
  if(!pesp_conn)
    return FUNC3(L, "not enough memory");

  cud->pesp_conn = pesp_conn;

  pesp_conn->type = ESPCONN_UDP;
  pesp_conn->proto.tcp = NULL;
  pesp_conn->proto.udp = NULL;

  pesp_conn->proto.udp = (esp_udp *)FUNC1(1,sizeof(esp_udp));
  if(!pesp_conn->proto.udp){
    FUNC2(pesp_conn);
    cud->pesp_conn = pesp_conn = NULL;
    return FUNC3(L, "not enough memory");
  }
  pesp_conn->state = ESPCONN_NONE;
  FUNC0("UDP server/client is set.\n");

  pesp_conn->reverse = cud;

  FUNC0("coap_create is called.\n");
  return 1;
}