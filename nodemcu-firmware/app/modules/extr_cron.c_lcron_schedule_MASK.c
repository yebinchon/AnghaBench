#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cronent_desc {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {struct cronent_desc desc; } ;
typedef  TYPE_1__ cronent_ud_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int cronent_count ; 
 int /*<<< orphan*/ * cronent_list ; 
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct cronent_desc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(lua_State *L) {
  cronent_ud_t *ud = FUNC3(L, 1, "cron.entry");
  char *strdesc = (char*)FUNC2(L, 2);
  struct cronent_desc desc;
  FUNC1(L, strdesc, &desc);
  ud->desc = desc;
  size_t i = FUNC0(L, ud);
  if (i == -1) {
    void *newlist;
    newlist = FUNC7(cronent_list, sizeof(int) * (cronent_count + 1));
    if (newlist == NULL) {
      return FUNC4(L, "out of memory");
    }
    cronent_list = newlist;
    FUNC5(L, 1);
    cronent_list[cronent_count++] = FUNC6(L, LUA_REGISTRYINDEX);
  }
  return 0;
}