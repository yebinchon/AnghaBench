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
struct stat {int dummy; } ;
struct led {char* sysfspath; int /*<<< orphan*/ * controlfd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LEDS_BASEPATH ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct led*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int FUNC7 (char*,struct stat*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC10(struct led **led, char *ledname)
{
	struct led *newled;
	struct stat statbuffer;
	int status;
	char *bp;
	FILE *bfp;

	bp = FUNC0(sizeof(char), FUNC8(ledname) + FUNC8(LEDS_BASEPATH) + 12);
	if ( ! bp )
		goto return_error;

	FUNC6(bp, "%s%s/brightness", LEDS_BASEPATH, ledname);

	status = FUNC7(bp, &statbuffer);
	if ( status )
		goto cleanup_fname;

	bfp = FUNC3( bp, "w" );
	if ( !bfp )
		goto cleanup_fname;

	if ( FUNC2(bfp) )
		goto cleanup_fp;

	/* sysfs path exists and, allocate LED struct */
	newled = FUNC0(sizeof(struct led),1);
	if ( !newled )
		goto cleanup_fp;

	newled->sysfspath = bp;
	newled->controlfd = bfp;

	*led = newled;

	if ( FUNC5(newled, 255) )
		goto cleanup_fp;

	if ( FUNC5(newled, 0) )
		goto cleanup_fp;

	return 0;

cleanup_fp:
	FUNC1(bfp);
cleanup_fname:
	FUNC4(bp);
return_error:
	FUNC9(LOG_CRIT, "can't open LED %s\n", ledname);
	*led = NULL;
	return -1;
}