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
struct TYPE_2__ {char* mac_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  bell ; 
 scalar_t__ code ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  crflag ; 
 int /*<<< orphan*/  doglob ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* formname ; 
 int /*<<< orphan*/  hash ; 
 char* hostname ; 
 int /*<<< orphan*/  interactive ; 
 int macnum ; 
 TYPE_1__* macros ; 
 scalar_t__ mapflag ; 
 char* mapin ; 
 char* mapout ; 
 int /*<<< orphan*/  mcase ; 
 char* modename ; 
 scalar_t__ ntflag ; 
 char* ntin ; 
 char* ntout ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  runique ; 
 int /*<<< orphan*/  sendport ; 
 int /*<<< orphan*/  stdout ; 
 char* structname ; 
 int /*<<< orphan*/  sunique ; 
 char* typename ; 
 int /*<<< orphan*/  verbose ; 

void FUNC4(int argc, const char *argv[])
{
	int i;

	if (connected)
		FUNC2("Connected to %s.\n", hostname);
	else
		FUNC2("Not connected.\n");
	if (!proxy) {
		FUNC3(1);
		if (connected) {
			FUNC2("Connected for proxy commands to %s.\n", hostname);
		}
		else {
			FUNC2("No proxy connection.\n");
		}
		FUNC3(0);
	}
	FUNC2("Mode: %s; Type: %s; Form: %s; Structure: %s\n",
		modename, typename, formname, structname);
	FUNC2("Verbose: %s; Bell: %s; Prompting: %s; Globbing: %s\n",
		FUNC1(verbose), FUNC1(bell), FUNC1(interactive),
		FUNC1(doglob));
	FUNC2("Store unique: %s; Receive unique: %s\n", FUNC1(sunique),
		FUNC1(runique));
	FUNC2("Case: %s; CR stripping: %s\n",FUNC1(mcase),FUNC1(crflag));
	if (ntflag) {
		FUNC2("Ntrans: (in) %s (out) %s\n", ntin,ntout);
	}
	else {
		FUNC2("Ntrans: off\n");
	}
	if (mapflag) {
		FUNC2("Nmap: (in) %s (out) %s\n", mapin, mapout);
	}
	else {
		FUNC2("Nmap: off\n");
	}
	FUNC2("Hash mark printing: %s; Use of PORT cmds: %s\n",
		FUNC1(hash), FUNC1(sendport));
	if (macnum > 0) {
		FUNC2("Macros:\n");
		for (i=0; i<macnum; i++) {
			FUNC2("\t%s\n",macros[i].mac_name);
		}
	}
	(void) FUNC0(stdout);
	code = 0;
}