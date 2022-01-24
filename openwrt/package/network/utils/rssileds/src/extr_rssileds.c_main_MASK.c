#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwinfo_ops {int dummy; } ;
struct TYPE_4__ {int minq; int maxq; int boffset; int bfactor; int /*<<< orphan*/  led; struct TYPE_4__* next; } ;
typedef  TYPE_1__ rule_t ;

/* Variables and functions */
 int BACKEND_RETRY_DELAY ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_PID ; 
 void* FUNC0 (int,int) ; 
 char* ifname ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct iwinfo_ops const**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct iwinfo_ops const*,char*) ; 
 int FUNC8 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(int argc, char **argv)
{
	int i,q,q0,r,s;
	const struct iwinfo_ops *iw = NULL;
	rule_t *headrule = NULL, *currentrule = NULL;

	if (argc < 9 || ( (argc-4) % 5 != 0 ) )
	{
		FUNC6("syntax: %s (ifname) (refresh) (threshold) (rule) [rule] ...\n", argv[0]);
		FUNC6("  rule: (sysfs-name) (minq) (maxq) (offset) (factore)\n");
		return 1;
	}

	ifname = argv[1];

	/* refresh interval */
	if ( FUNC8(argv[2], "%d", &r) != 1 )
		return 1;

	/* sustain threshold */
	if ( FUNC8(argv[3], "%d", &s) != 1 )
		return 1;

	FUNC5("rssileds", LOG_PID, LOG_DAEMON);
	FUNC9(LOG_INFO, "monitoring %s, refresh rate %d, threshold %d\n", ifname, r, s);

	currentrule = headrule;
	for (i=4; i<argc; i=i+5) {
		if (! currentrule)
		{
			/* first element in the list */
			currentrule = FUNC0(sizeof(rule_t),1);
			headrule = currentrule;
		}
		else
		{
			/* follow-up element */
			currentrule->next = FUNC0(sizeof(rule_t),1);
			currentrule = currentrule->next;
		}

		if ( FUNC1(&(currentrule->led), argv[i]) )
			return 1;
		
		if ( FUNC8(argv[i+1], "%d", &(currentrule->minq)) != 1 )
			return 1;

		if ( FUNC8(argv[i+2], "%d", &(currentrule->maxq)) != 1 )
			return 1;
		
		if ( FUNC8(argv[i+3], "%d", &(currentrule->boffset)) != 1 )
			return 1;
		
		if ( FUNC8(argv[i+4], "%d", &(currentrule->bfactor)) != 1 )
			return 1;
	}
	FUNC3(headrule);

	q0 = -1;
	do {
		q = FUNC7(iw, ifname);
		if ( q < q0 - s || q > q0 + s ) {
			FUNC10(headrule, q);
			q0=q;
		};
		// re-open backend...
		if ( q == -1 && q0 == -1 ) {
			if (iw) {
				FUNC2();
				iw=NULL;
				FUNC11(BACKEND_RETRY_DELAY);
			}
			while (FUNC4(&iw, ifname))
				FUNC11(BACKEND_RETRY_DELAY);
		}
		FUNC11(r);
	} while(1);

	FUNC2();

	return 0;
}