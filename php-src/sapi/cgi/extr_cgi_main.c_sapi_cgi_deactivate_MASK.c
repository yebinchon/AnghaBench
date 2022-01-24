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
typedef  int /*<<< orphan*/  fcgi_request ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  parent ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  sapi_started ; 
 int /*<<< orphan*/  server_context ; 

__attribute__((used)) static int FUNC5(void)
{
	/* flush only when SAPI was started. The reasons are:
		1. SAPI Deactivate is called from two places: module init and request shutdown
		2. When the first call occurs and the request is not set up, flush fails on FastCGI.
	*/
	if (FUNC0(sapi_started)) {
		if (FUNC2()) {
			if (
				!parent &&
				!FUNC1((fcgi_request*)FUNC0(server_context), 0)) {
				FUNC3();
			}
		} else {
			FUNC4(FUNC0(server_context));
		}
	}
	return SUCCESS;
}