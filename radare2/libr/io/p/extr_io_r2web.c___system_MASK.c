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
struct TYPE_3__ {int /*<<< orphan*/  (* cb_printf ) (char*,char*) ;} ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  TYPE_1__ RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int*,int*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static char *FUNC6(RIO *io, RIODesc *fd, const char *command) {
	if (!*command) {
		return NULL;
	}
	int code, rlen;
	char *cmd = FUNC4 (command);
	char *url = FUNC3 ("%s/%s", FUNC1(fd), cmd);
	char *out = FUNC2 (url, &code, &rlen);
	if (out && rlen > 0) {
		io->cb_printf ("%s", out);
	}
	FUNC0 (out);
	FUNC0 (url);
	FUNC0 (cmd);
	return NULL;
}