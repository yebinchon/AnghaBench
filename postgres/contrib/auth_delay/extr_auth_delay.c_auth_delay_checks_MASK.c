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
typedef  int /*<<< orphan*/  Port ;

/* Variables and functions */
 int STATUS_OK ; 
 long auth_delay_milliseconds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 

__attribute__((used)) static void
FUNC2(Port *port, int status)
{
	/*
	 * Any other plugins which use ClientAuthentication_hook.
	 */
	if (&original_client_auth_hook)
		FUNC0(port, status);

	/*
	 * Inject a short delay if authentication failed.
	 */
	if (status != STATUS_OK)
	{
		FUNC1(1000L * auth_delay_milliseconds);
	}
}