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
struct TYPE_3__ {int entry_count; int /*<<< orphan*/ * entry; } ;
typedef  TYPE_1__ pulse_t ;
typedef  int /*<<< orphan*/  pulse_entry_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
  pulse_t *pulser = FUNC4(L, 1, "gpio.pulse");
  int entry_pos = FUNC3(L, 2);

  if (entry_pos < 1 || entry_pos > pulser->entry_count) {
    return FUNC5(L, "entry number must be in range 1 .. %d", pulser->entry_count);
  }

  pulse_entry_t *entry = pulser->entry + entry_pos - 1;

  pulse_entry_t new_entry = *entry;

  FUNC6(L, 3);

  FUNC2(L, &new_entry);

  // Now do the update
  FUNC0();
  *entry = new_entry;
  FUNC1();

  return 0;
}