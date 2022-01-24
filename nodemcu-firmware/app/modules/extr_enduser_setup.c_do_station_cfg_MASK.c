#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ task_param_t ;
struct station_config {int dummy; } ;
struct TYPE_2__ {int connecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct station_config*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct station_config*) ; 

__attribute__((used)) static void FUNC6 (task_param_t param, uint8_t prio)
{
  FUNC0("do_station_cfg");

  state->connecting = 1;
  struct station_config *cnf = (struct station_config *)param;
  (void)prio;

  /* Best-effort disconnect-reconfig-reconnect. If the device is currently
   * connected, the disconnect will work but the connect will report failure
   * (though it will actually start connecting). If the devices is not
   * connected, the disconnect may fail but the connect will succeed. A
   * solid head-in-the-sand approach seems to be the best tradeoff on
   * functionality-vs-code-size.
   * TODO: maybe use an error callback to at least report if the set config
   * call fails.
   */
  FUNC4 ();
  FUNC5 (cnf);
  FUNC3 ();
  FUNC1(FUNC2(), cnf);
}