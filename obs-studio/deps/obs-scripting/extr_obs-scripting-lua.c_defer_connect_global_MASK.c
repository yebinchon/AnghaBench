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
struct script_callback {int /*<<< orphan*/  extra; } ;
typedef  int /*<<< orphan*/  signal_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  calldata_signal_callback_global ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct script_callback*) ; 

__attribute__((used)) static void FUNC2(void *p_cb)
{
	struct script_callback *cb = p_cb;

	signal_handler_t *handler = FUNC0(&cb->extra, "handler");
	FUNC1(handler, calldata_signal_callback_global,
				      cb);
}