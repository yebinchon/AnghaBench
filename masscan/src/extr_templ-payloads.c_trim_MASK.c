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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char *line, size_t sizeof_line)
{
    if (sizeof_line > FUNC2(line))
        sizeof_line = FUNC2(line);

    while (FUNC0(*line & 0xFF))
        FUNC1(line, line+1, sizeof_line--);
    while (FUNC0(line[sizeof_line-1] & 0xFF))
        line[--sizeof_line] = '\0';
}