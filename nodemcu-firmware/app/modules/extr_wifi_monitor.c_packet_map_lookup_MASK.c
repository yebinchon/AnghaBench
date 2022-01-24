#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct RxControl {int dummy; } ;
struct TYPE_7__ {int len; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_2__ packet_t ;
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_8__ {TYPE_1__ framectrl; } ;
typedef  TYPE_3__ management_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FRAME_TYPE_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LUA_TNUMBER ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  packet_function ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
  packet_t *packet = FUNC3(L, 1, "wifi.packet");
  struct RxControl *rxc = (struct RxControl *) packet->buf;
  management_request_t *mgt = (management_request_t *) (rxc + 1);
  const uint8 *packet_end = packet->buf + packet->len;

  if ((void *) (mgt + 1) > (void *) packet_end) {
    return 0;
  }
  if (mgt->framectrl.Type != FRAME_TYPE_MANAGEMENT) {
    return 0;
  }

  if (FUNC7(L, 2) == LUA_TNUMBER) {
    int field = FUNC1(L, 2);
    if (FUNC8(L, mgt, packet_end, field)) {
      return 1;
    }
  } else {
    const char *field = FUNC2(L, 2);
    if (FUNC9(L, packet->buf, packet_end, field)) {
      return 1;
    }

    // Now search the packet function map
    FUNC6(L, FUNC0(packet_function));
    FUNC4(L, -1, field);
    if (!FUNC5(L, -1)) {
      return 1;
    }
  }

  return 0;
}