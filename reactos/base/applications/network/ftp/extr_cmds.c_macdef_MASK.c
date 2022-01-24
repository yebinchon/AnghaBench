#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* mac_start; char* mac_end; int /*<<< orphan*/  mac_name; } ;

/* Variables and functions */
 int EOF ; 
 int code ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/ * line ; 
 char* macbuf ; 
 int macnum ; 
 TYPE_1__* macros ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

void FUNC8(int argc, const char *argv[])
{
	char *tmp;
	int c;

	if (macnum == 16) {
		FUNC4("Limit of 16 macros have already been defined\n");
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	if (argc < 2) {
		(void) FUNC5(line, " ");
		FUNC4("(macro name) ");
		(void) FUNC0(stdout);
		(void) FUNC2(&line[FUNC6(line)]);
		FUNC3();
		argc = margc;
		argv = margv;
	}
	if (argc != 2) {
		FUNC4("Usage: %s macro_name\n",argv[0]);
		(void) FUNC0(stdout);
		code = -1;
		return;
	}
	if (interactive) {
		FUNC4("Enter macro line by line, terminating it with a null line\n");
		(void) FUNC0(stdout);
	}
	(void) FUNC7(macros[macnum].mac_name, argv[1], 8);
	if (macnum == 0) {
		macros[macnum].mac_start = macbuf;
	}
	else {
		macros[macnum].mac_start = macros[macnum - 1].mac_end + 1;
	}
	tmp = macros[macnum].mac_start;
	while (tmp != macbuf+4096) {
		if ((c = FUNC1()) == EOF) {
			FUNC4("macdef:end of file encountered\n");
			(void) FUNC0(stdout);
			code = -1;
			return;
		}
		if ((*tmp = c) == '\n') {
			if (tmp == macros[macnum].mac_start) {
				macros[macnum++].mac_end = tmp;
				code = 0;
				return;
			}
			if (*(tmp-1) == '\0') {
				macros[macnum++].mac_end = tmp - 1;
				code = 0;
				return;
			}
			*tmp = '\0';
		}
		tmp++;
	}
	while (1) {
		while ((c = FUNC1()) != '\n' && c != EOF)
			/* LOOP */;
		if (c == EOF || FUNC1() == '\n') {
			FUNC4("Macro not defined - 4k buffer exceeded\n");
			(void) FUNC0(stdout);
			code = -1;
			return;
		}
	}
}