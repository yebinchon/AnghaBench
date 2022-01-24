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
struct inf_value {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf_value*,int,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(struct inf_value *inf_val, int field, DWORD *value, DWORD def)
{
    char *value_str;
    BOOL ret;

    ret = FUNC2(inf_val, field, &value_str, NULL);
    if (!ret) return FALSE;
    if (!value_str)
    {
        *value = def;
        return TRUE;
    }

    *value = FUNC0(value_str);
    FUNC1(value_str);

    return TRUE;
}