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
 char** FUNC0 (int /*<<< orphan*/ ) ; 
 int READLINE_HIST_SIZE ; 
 int /*<<< orphan*/  readline_hist ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

void FUNC3(const char *line) {
    if (line[0] != '\0'
        && (FUNC0(readline_hist)[0] == NULL
            || FUNC2(FUNC0(readline_hist)[0], line) != 0)) {
        // a line which is not empty and different from the last one
        // so update the history
        char *most_recent_hist = FUNC1(line);
        if (most_recent_hist != NULL) {
            for (int i = READLINE_HIST_SIZE - 1; i > 0; i--) {
                FUNC0(readline_hist)[i] = FUNC0(readline_hist)[i - 1];
            }
            FUNC0(readline_hist)[0] = most_recent_hist;
        }
    }
}