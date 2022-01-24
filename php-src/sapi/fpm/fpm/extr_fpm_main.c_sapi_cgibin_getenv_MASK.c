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
 char* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ fpm_is_running ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  server_context ; 

__attribute__((used)) static char *FUNC3(char *name, size_t name_len) /* {{{ */
{
	/* if fpm has started, use fcgi env */
	if (fpm_is_running) {
		fcgi_request *request = (fcgi_request*) FUNC0(server_context);
		return FUNC1(request, name, name_len);
	}

	/* if fpm has not started yet, use std env */
	return FUNC2(name);
}