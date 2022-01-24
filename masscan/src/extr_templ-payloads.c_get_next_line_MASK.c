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
 char* FUNC0 (char*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(FILE *fp, unsigned *line_number, char *line, size_t sizeof_line)
{
    if (line[0] != '\0')
        return line;

    for (;;) {
        char *p;

        p = FUNC0(line, (unsigned)sizeof_line, fp);
        if (p == NULL) {
            line[0] = '\0';
            return NULL;
        }
        (*line_number)++;

        FUNC2(line, sizeof_line);
        if (FUNC1(line))
            continue;
        if (line[0] == '\0')
            continue;

        return line;
    }
}