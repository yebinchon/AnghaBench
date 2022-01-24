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
struct TYPE_2__ {int do_enable; int enabled; int do_disable; int do_reset; int do_wlan_cycle_power; } ;

/* Variables and functions */
 int SERVERS_CYCLE_TIME_MS ; 
 int /*<<< orphan*/  SERVERS_DEF_PASS ; 
 int /*<<< orphan*/  SERVERS_DEF_USER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_1__ servers_data ; 
 int /*<<< orphan*/  servers_pass ; 
 int /*<<< orphan*/  servers_user ; 
 int sleep_sockets ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17 (void *pvParameters) {

    bool cycle = false;

    FUNC10 (servers_user, SERVERS_DEF_USER);
    FUNC10 (servers_pass, SERVERS_DEF_PASS);

    FUNC13();
    FUNC2();

    for ( ;; ) {

        if (servers_data.do_enable) {
            // enable network services
            FUNC12();
            FUNC1();
            // now set/clear the flags
            servers_data.enabled = true;
            servers_data.do_enable = false;
        }
        else if (servers_data.do_disable) {
            // disable network services
            FUNC11();
            FUNC0();
            // now clear the flags
            servers_data.do_disable = false;
            servers_data.enabled = false;
        }
        else if (servers_data.do_reset) {
            // resetting the servers is needed to prevent half-open sockets
            servers_data.do_reset = false;
            if (servers_data.enabled) {
                FUNC14();
                FUNC3();
            }
            // and we should also close all user sockets. We do it here
            // for convinience and to save on code size.
            FUNC5();
        }

        if (cycle) {
            FUNC15();
        }
        else {
            FUNC4();
        }

        if (sleep_sockets) {
            FUNC9(true);
            FUNC6();
            FUNC9(false);
            FUNC7(SERVERS_CYCLE_TIME_MS * 2);
            if (servers_data.do_wlan_cycle_power) {
                servers_data.do_wlan_cycle_power = false;
                FUNC16();
            }
            sleep_sockets = false;

        }

        // set the alive flag for the wdt
        FUNC8();

        // move to the next cycle
        cycle = cycle ? false : true;
        FUNC7(SERVERS_CYCLE_TIME_MS);
    }
}