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

void FUNC2(int status)
{
	FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

	FUNC1(stream, "Usage: %s [OPTIONS...]\n", progname);
	FUNC1(stream,
"\n"
"Options:\n"
"  -b              create image in big endian format\n"
"  -B <buildno>    build number\n"
"  -i <file>       read input from the file <file>\n"
"  -d <name>       set device name to <name>\n"
"  -m <model>      model name\n"
"  -o <file>       write output to the file <file>\n"
"  -O <offset>     set offset to <offset>\n"
"  -s <sig>        set image signature to <sig>\n"
"  -h              show this screen\n"
	);

	FUNC0(status);
}