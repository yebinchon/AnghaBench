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
struct security_attributes {int /*<<< orphan*/  sa; } ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct security_attributes*) ; 

HANDLE
FUNC2(LPCTSTR name, bool allow_all, bool initial_state, bool manual_reset)
{
    if (allow_all)
    {
        struct security_attributes sa;
        if (!FUNC1(&sa))
        {
            return NULL;
        }
        return FUNC0(&sa.sa, (BOOL)manual_reset, (BOOL)initial_state, name);
    }
    else
    {
        return FUNC0(NULL, (BOOL)manual_reset, (BOOL)initial_state, name);
    }
}