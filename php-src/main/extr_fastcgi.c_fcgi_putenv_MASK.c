#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ fcgi_request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,unsigned int) ; 
 scalar_t__ FUNC3 (char*) ; 

char* FUNC4(fcgi_request *req, char* var, int var_len, char* val)
{
	if (!req) return NULL;
	if (val == NULL) {
		FUNC1(&req->env, FUNC0(var, var_len), var, var_len);
		return NULL;
	} else {
		return FUNC2(&req->env, FUNC0(var, var_len), var, var_len, val, (unsigned int)FUNC3(val));
	}
}