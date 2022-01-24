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
 int /*<<< orphan*/  TRUE ; 
 struct inf_value* FUNC0 (struct inf_section*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf_value*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2(struct inf_section *inf_sec, const char *key, int field, DWORD *value, DWORD def)
{
    struct inf_value *inf_val;

    inf_val = FUNC0(inf_sec, key);
    if (!inf_val)
    {
        *value = def;
        return TRUE;
    }

    return FUNC1(inf_val, field, value, def);
}