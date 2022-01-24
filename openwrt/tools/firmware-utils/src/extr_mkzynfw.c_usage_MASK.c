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
struct board_info {char* name; char* desc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 struct board_info* boards ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

void
FUNC2(int status)
{
	FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;
	struct board_info *board;

	FUNC1(stream, "Usage: %s [OPTIONS...]\n", progname);
	FUNC1(stream,
"\n"
"Options:\n"
"  -B <board>      create image for the board specified with <board>.\n"
"                  valid <board> values:\n"
	);
	for (board = boards; board->name != NULL; board++){
		FUNC1(stream,
"                    %-12s= %s\n",
		 board->name, board->desc);
	};
	FUNC1(stream,
"  -b <file>[:<align>]\n"
"                  add boot extension block to the image\n"
"  -r <file>[:<align>]\n"
"                  add raw block to the image\n"
"  -o <file>       write output to the file <file>\n"
"  -h              show this screen\n"
	);

	FUNC0(status);
}