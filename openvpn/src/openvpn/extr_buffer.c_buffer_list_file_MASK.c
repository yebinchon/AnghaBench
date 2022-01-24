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
struct buffer_list {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct buffer_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_list*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 

struct buffer_list *
FUNC7(const char *fn, int max_line_len)
{
    FILE *fp = FUNC6(fn, "r");
    struct buffer_list *bl = NULL;

    if (fp)
    {
        char *line = (char *) FUNC5(max_line_len);
        if (line)
        {
            bl = FUNC0(0);
            while (FUNC3(line, max_line_len, fp) != NULL)
            {
                FUNC1(bl, line);
            }
            FUNC4(line);
        }
        FUNC2(fp);
    }
    return bl;
}