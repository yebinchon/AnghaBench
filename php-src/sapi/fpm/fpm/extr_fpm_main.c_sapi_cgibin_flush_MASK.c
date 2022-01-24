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
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fpm_is_running ; 
 int /*<<< orphan*/  parent ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(void *server_context) /* {{{ */
{
	/* fpm has started, let use fcgi instead of stdout */
	if (fpm_is_running) {
		fcgi_request *request = (fcgi_request*) server_context;
		if (!parent && request && !FUNC0(request, 0)) {
			FUNC2();
		}
		return;
	}

	/* fpm has not started yet, let use stdout instead of fcgi */
	if (FUNC1(stdout) == EOF) {
		FUNC2();
	}
}