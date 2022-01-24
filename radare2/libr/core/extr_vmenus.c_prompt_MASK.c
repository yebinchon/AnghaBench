#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {TYPE_1__* line; } ;
struct TYPE_3__ {char* prompt; char* contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 void* FUNC6 (char const*) ; 

__attribute__((used)) static char *FUNC7(const char *str, const char *txt) {
	char cmd[1024];
	char *res = NULL;
	char *oprompt = FUNC6 (FUNC4 ()->line->prompt);
	FUNC3 (true);
	if (txt && *txt) {
		FUNC1 (FUNC4 ()->line->contents);
		FUNC4 ()->line->contents = FUNC6 (txt);
	} else {
		FUNC0 (FUNC4 ()->line->contents);
	}
	*cmd = '\0';
	FUNC5 (str);
	if (FUNC2 (cmd, sizeof (cmd) - 1, 0, NULL) < 0) {
		*cmd = '\0';
	}
	//line[strlen(line)-1]='\0';
	if (*cmd) {
		res = FUNC6 (cmd);
	}
	FUNC5 (oprompt);
	FUNC1 (oprompt);
	FUNC0 (FUNC4 ()->line->contents);
	return res;
}