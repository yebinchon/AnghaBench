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
struct mp_log_root {size_t status_lines; size_t blank_lines; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(struct mp_log_root *root, char *new_status)
{
    FILE *f = stderr;

    size_t new_lines = 1;
    char *tmp = new_status;
    while (1) {
        tmp = FUNC3(tmp, '\n');
        if (!tmp)
            break;
        new_lines++;
        tmp++;
    }

    size_t old_lines = root->status_lines;
    if (!new_status[0] && old_lines == 0)
        return; // nothing to clear

    size_t clear_lines = FUNC1(FUNC0(new_lines, old_lines), root->blank_lines);

    // clear the status line itself
    FUNC2(f, "\r\033[K");
    // and clear all previous old lines
    for (size_t n = 1; n < clear_lines; n++)
        FUNC2(f, "\033[A\r\033[K");
    // skip "unused" blank lines, so that status is aligned to term bottom
    for (size_t n = new_lines; n < clear_lines; n++)
        FUNC2(f, "\n");

    root->status_lines = new_lines;
    root->blank_lines = FUNC0(root->blank_lines, new_lines);
}