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
typedef  int ptrdiff_t ;
struct TYPE_3__ {int buf; } ;
typedef  TYPE_1__ packet_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L, int buf_offset, int buf_length) {
  packet_t *packet = FUNC1(L, 1, "wifi.packet");

  ptrdiff_t start = FUNC5(FUNC0(L, 2), buf_length);
  ptrdiff_t end = FUNC5(FUNC2(L, 3, -1), buf_length);

  if (start < 1) start = 1;
  if (end > buf_length) end = buf_length;
  if (start <= end) {
    FUNC4(L, packet->buf+start-1 + buf_offset, end-start+1);
  } else {
    FUNC3(L, "");
  }

  return 1;
}