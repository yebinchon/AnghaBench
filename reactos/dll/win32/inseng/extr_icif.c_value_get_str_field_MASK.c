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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct inf_value*) ; 
 char* FUNC3 (char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(struct inf_value *inf_val, int field, char **value, const char *def)
{
    char *line, *str, *next;
    int i = 0;

    line = FUNC2(inf_val);
    if (!line) return FALSE;

    str = line;
    do
    {
        i++;
        next = FUNC3(&str, TRUE);

        if (field == i)
        {
            BOOL ret = FUNC0(value, str);
            FUNC1(line);
            return ret;
        }

        str = next;
    } while (str);

    return FUNC0(value, def);
}