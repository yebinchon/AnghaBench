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
struct inf_section {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct inf_value* FUNC2 (struct inf_section*,char const*) ; 
 char* FUNC3 (struct inf_value*) ; 

__attribute__((used)) static BOOL FUNC4(struct inf_section *inf_sec, const char *key, DWORD *value, DWORD def)
{
    struct inf_value *inf_val;
    char *str;

    inf_val = FUNC2(inf_sec, key);
    if (!inf_val)
    {
        *value = def;
        return TRUE;
    }

    str = FUNC3(inf_val);
    if (!str) return FALSE;

    *value = FUNC0(str);
    FUNC1(str);

    return TRUE;
}