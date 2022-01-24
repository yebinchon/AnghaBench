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
 int /*<<< orphan*/  calldata_signal_callback ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct script_callback*) ; 

__attribute__((used)) static void FUNC3(void *p_cb)
{
	struct script_callback *cb = p_cb;

	signal_handler_t *handler = FUNC0(&cb->extra, "handler");
	const char *signal = FUNC1(&cb->extra, "signal");
	FUNC2(handler, signal, calldata_signal_callback, cb);
}