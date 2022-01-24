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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(char* argv[]) {
	FUNC0("Usage: %s [OPTIONS...]\n"
	       "\n"
	       "Options:\n"
	       "  -f            add sercom footer (if absent, header)\n"
	       "  -b <hwid>     use hardware id specified with <hwid> (ASCII)\n"
	       "  -r <hwrev>    use hardware revision specified with <hwrev> (ASCII)\n"
	       "  -v <version>  set image version to <version> (decimal, hex or octal notation)\n"
	       "  -i <file>     input file\n"
	       , argv[0]);
}