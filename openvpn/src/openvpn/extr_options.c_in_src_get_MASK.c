#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  multiline; int /*<<< orphan*/  fp; } ;
struct in_src {scalar_t__ type; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_TYPE_BUF ; 
 scalar_t__ IS_TYPE_FP ; 
 int FUNC2 (int /*<<< orphan*/ ,char,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static bool
FUNC6(const struct in_src *is, char *line, const int size)
{
    if (is->type == IS_TYPE_FP)
    {
        return FUNC1(FUNC3(line, size, is->u.fp));
    }
    else if (is->type == IS_TYPE_BUF)
    {
        bool status = FUNC2(is->u.multiline, '\n', line, size);
        if ((int) FUNC5(line) + 1 < size)
        {
            FUNC4(line, "\n");
        }
        return status;
    }
    else
    {
        FUNC0(0);
        return false;
    }
}