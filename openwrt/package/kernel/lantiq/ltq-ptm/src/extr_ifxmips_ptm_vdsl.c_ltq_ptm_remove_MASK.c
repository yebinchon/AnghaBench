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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PPE_MAILBOX_IGU1_INT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** g_net_dev ; 
 int /*<<< orphan*/  g_ptm_priv_data ; 
 int /*<<< orphan*/ * ifx_mei_atm_showtime_enter ; 
 int /*<<< orphan*/ * ifx_mei_atm_showtime_exit ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
    int i;
	ifx_mei_atm_showtime_enter = NULL;
	ifx_mei_atm_showtime_exit  = NULL;


    FUNC5(0);

    FUNC3(PPE_MAILBOX_IGU1_INT, &g_ptm_priv_data);

    for ( i = 0; i < FUNC0(g_net_dev); i++ )
        FUNC7(g_net_dev[i]);

    for ( i = 0; i < FUNC0(g_net_dev); i++ ) {
        FUNC4(g_net_dev[i]);
        g_net_dev[i] = NULL;
    }

    FUNC2();

    FUNC6();

    FUNC1();

    return 0;
}