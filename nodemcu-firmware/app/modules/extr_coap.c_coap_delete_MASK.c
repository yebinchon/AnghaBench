#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct espconn {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ self_ref; TYPE_4__* pesp_conn; } ;
typedef  TYPE_2__ lcoap_userdata ;
struct TYPE_6__ {TYPE_4__* udp; } ;
struct TYPE_8__ {TYPE_1__ proto; scalar_t__ local_port; scalar_t__ remote_port; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6( lua_State* L, const char* mt )
{
  struct espconn *pesp_conn = NULL;
  lcoap_userdata *cud;

  cud = (lcoap_userdata *)FUNC4(L, 1, mt);
  FUNC3(L, cud, 1, "Server/Client expected");
  if(cud==NULL){
    FUNC0("userdata is nil.\n");
    return 0;
  }

  // free (unref) callback ref
  if(LUA_NOREF!=cud->self_ref){
    FUNC5(L, LUA_REGISTRYINDEX, cud->self_ref);
    cud->self_ref = LUA_NOREF;
  }

  if(cud->pesp_conn)
  {
    if(cud->pesp_conn->proto.udp->remote_port || cud->pesp_conn->proto.udp->local_port)
      FUNC1(cud->pesp_conn);
    FUNC2(cud->pesp_conn->proto.udp);
    cud->pesp_conn->proto.udp = NULL;
    FUNC2(cud->pesp_conn);
    cud->pesp_conn = NULL;
  }

  FUNC0("coap_delete is called.\n");
  return 0;
}