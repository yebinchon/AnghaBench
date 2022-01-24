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
struct buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct buffer *buf)
{
    char *last = (char *) FUNC0(buf);
    if (last && *last == '\0') /* already terminated? */
    {
        return;
    }

    if (!FUNC2(buf, 1))   /* make space for trailing null */
    {
        FUNC1(buf, -1);
    }

    FUNC3(buf, 0);
}