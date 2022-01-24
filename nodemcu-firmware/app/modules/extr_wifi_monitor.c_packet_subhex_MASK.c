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
typedef  int uint8 ;
typedef  int ptrdiff_t ;
struct TYPE_3__ {int* buf; } ;
typedef  TYPE_1__ packet_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(lua_State *L, int buf_offset, int buf_length) {
  packet_t *packet = FUNC3(L, 1, "wifi.packet");

  ptrdiff_t start = FUNC8(FUNC2(L, 2), buf_length);
  ptrdiff_t end = FUNC8(FUNC4(L, 3, -1), buf_length);
  const char *sep = FUNC5(L, 4, "");

  if (start < 1) start = 1;
  if (end > buf_length) end = buf_length;
  if (start <= end) {
    luaL_Buffer b;
    FUNC1(L, &b);

    int i;
    for (i = start - 1; i < end; i++) {
      char hex[3];

      if (i >= start) {
        FUNC0(&b, sep);
      }

      uint8 c = packet->buf[i + buf_offset];

      hex[0] = "0123456789abcdef"[c >> 4];
      hex[1] = "0123456789abcdef"[c & 0xf];
      hex[2] = 0;
      FUNC0(&b, hex);
    }

    FUNC6(&b);
  } else {
    FUNC7(L, "");
  }

  return 1;
}