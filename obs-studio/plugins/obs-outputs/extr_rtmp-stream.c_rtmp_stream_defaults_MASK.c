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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OPT_BIND_IP ; 
 int /*<<< orphan*/  OPT_DROP_THRESHOLD ; 
 int /*<<< orphan*/  OPT_LOWLATENCY_ENABLED ; 
 int /*<<< orphan*/  OPT_MAX_SHUTDOWN_TIME_SEC ; 
 int /*<<< orphan*/  OPT_NEWSOCKETLOOP_ENABLED ; 
 int /*<<< orphan*/  OPT_PFRAME_DROP_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(obs_data_t *defaults)
{
	FUNC1(defaults, OPT_DROP_THRESHOLD, 700);
	FUNC1(defaults, OPT_PFRAME_DROP_THRESHOLD, 900);
	FUNC1(defaults, OPT_MAX_SHUTDOWN_TIME_SEC, 30);
	FUNC2(defaults, OPT_BIND_IP, "default");
	FUNC0(defaults, OPT_NEWSOCKETLOOP_ENABLED, false);
	FUNC0(defaults, OPT_LOWLATENCY_ENABLED, false);
}