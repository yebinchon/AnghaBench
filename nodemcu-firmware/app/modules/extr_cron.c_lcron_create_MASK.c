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
struct cronent_desc {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {struct cronent_desc desc; void* cb_ref; } ;
typedef  TYPE_1__ cronent_ud_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int cronent_count ; 
 void** cronent_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct cronent_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (void**,int) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
  // Check arguments
  char *strdesc = (char*)FUNC2(L, 1);
  void *newlist;
  FUNC1(L, 2);
  // Parse description
  struct cronent_desc desc;
  FUNC0(L, strdesc, &desc);
  // Allocate userdata
  cronent_ud_t *ud = FUNC6(L, sizeof(cronent_ud_t));
  // Set metatable
  FUNC4(L, "cron.entry");
  FUNC8(L, -2);
  // Set callback
  FUNC7(L, 2);
  ud->cb_ref = FUNC5(L, LUA_REGISTRYINDEX);
  // Set entry
  ud->desc = desc;
  // Store entry
  newlist = FUNC9(cronent_list, sizeof(int) * (cronent_count + 1));
  if (newlist == NULL) {
    return FUNC3(L, "out of memory");
  }
  FUNC7(L, -1);
  cronent_list = newlist;
  cronent_list[cronent_count++] = FUNC5(L, LUA_REGISTRYINDEX);
  return 1;
}