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

/* Variables and functions */
 int const OPENVPN_EXIT_STATUS_ERROR ; 
 int const OPENVPN_EXIT_STATUS_GOOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  forked ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ port_share ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(const int status)
{
    if (!forked)
    {
        FUNC7();

#ifdef _WIN32
        uninit_win32();
#endif

        FUNC1();

#ifdef ENABLE_PLUGIN
        plugin_abort();
#endif

#if PORT_SHARE
        if (port_share)
        {
            port_share_abort(port_share);
        }
#endif

#ifdef ENABLE_MEMSTATS
        mstats_close();
#endif

#ifdef ABORT_ON_ERROR
        if (status == OPENVPN_EXIT_STATUS_ERROR)
        {
            abort();
        }
#endif

        if (status == OPENVPN_EXIT_STATUS_GOOD)
        {
            FUNC4();
        }
    }

    FUNC2(status);
}