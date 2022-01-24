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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC2(int status)
{
    FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

    FUNC1(stream, "Usage: %s [OPTIONS...]\n", progname);
    FUNC1(stream,
	    "\n"
	    "Options:\n"
	    "  -s <sig>        set image signature to <sig>\n"
	    "  -m <model>      set model to <model>\n"
	    "  -i <file>       read input from file <file>\n"
	    "  -o <file>       write output to file <file>\n"
	    "  -f <flash>      set flash address to <flash>\n"
	    "  -S <start>      set start address to <start>\n"
	    "  -b              big-endianness mode\n");

    FUNC0(status);
}