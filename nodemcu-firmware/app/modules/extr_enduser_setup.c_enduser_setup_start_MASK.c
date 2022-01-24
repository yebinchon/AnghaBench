#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STATION_MODE ; 
 int /*<<< orphan*/  do_station_cfg ; 
 scalar_t__ do_station_cfg_handle ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* ipaddr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  manual ; 
 int /*<<< orphan*/  on_initial_scan_done ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(lua_State *L)
{
  /* Note: The debug callback is set in enduser_setup_init. It's normal to not see this debug message on first invocation. */
  FUNC0("enduser_setup_start");

  ipaddr[0] = '\0';

  if (!do_station_cfg_handle)
  {
    do_station_cfg_handle = FUNC7(do_station_cfg);
  }

  if(FUNC4(L))
  {
    goto failed;
  }

  if (!manual)
  {
    FUNC0("Performing AP Scan to identify likely AP's channel. Enabling Station if it wasn't already.");
    FUNC9(STATION_MODE | FUNC8());
    FUNC10(NULL, on_initial_scan_done);
  }
  else
  {
   FUNC1();
  }

  if(FUNC2())
  {
    goto failed;
  }

  if(FUNC3())
  {
    goto failed;
  }

  goto out;

failed:
  FUNC5(FUNC6());
out:
  return 0;
}