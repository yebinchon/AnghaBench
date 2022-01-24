#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ packet_t ;
typedef  scalar_t__ os_param_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ recv_cb ; 

__attribute__((used)) static void FUNC8(os_param_t param, uint8_t prio)
{
  packet_t *input = (packet_t *) param;
  (void) prio;

  lua_State *L = FUNC3();

  if (recv_cb != LUA_NOREF) {
    FUNC5(L, LUA_REGISTRYINDEX, recv_cb);

    packet_t *packet = (packet_t *) FUNC4(L, input->len + sizeof(packet_t));
    packet->len = input->len;
    FUNC7(packet->buf, input->buf, input->len);
    FUNC1(L, "wifi.packet");
    FUNC6(L, -2);

    FUNC0(input);

    FUNC2(L, 1, 0);
  } else {
    FUNC0(input);
  }
}