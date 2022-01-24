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
typedef  TYPE_1__* sdlPtr ;
typedef  int /*<<< orphan*/ * sdlFunctionPtr ;
struct TYPE_3__ {int /*<<< orphan*/ * requests; int /*<<< orphan*/  functions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static sdlFunctionPtr FUNC5(sdlPtr sdl, const char *function_name) /* {{{ */
{
	sdlFunctionPtr tmp;

	int len = FUNC3(function_name);
	char *str = FUNC1(function_name,len);
	FUNC2(str,len);
	if (sdl != NULL) {
		if ((tmp = FUNC4(&sdl->functions, str, len)) != NULL) {
			FUNC0(str);
			return tmp;
		} else if (sdl->requests != NULL && (tmp = FUNC4(sdl->requests, str, len)) != NULL) {
			FUNC0(str);
			return tmp;
		}
	}
	FUNC0(str);
	return NULL;
}