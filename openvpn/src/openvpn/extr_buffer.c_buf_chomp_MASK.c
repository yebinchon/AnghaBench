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
 int CC_CRLF ; 
 int CC_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*) ; 
 scalar_t__ FUNC3 (char,int) ; 

void
FUNC4(struct buffer *buf)
{
    while (true)
    {
        char *last = (char *) FUNC0(buf);
        if (!last)
        {
            break;
        }
        if (FUNC3(*last, CC_CRLF|CC_NULL))
        {
            if (!FUNC1(buf, -1))
            {
                break;
            }
        }
        else
        {
            break;
        }
    }
    FUNC2(buf);
}