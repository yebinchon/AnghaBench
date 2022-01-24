#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  m_option_t ;
struct TYPE_3__ {char* name; scalar_t__* attribs; int /*<<< orphan*/  enabled; scalar_t__* label; } ;
typedef  TYPE_1__ m_obj_settings_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (char**,scalar_t__) ; 
 char* FUNC2 (char*,char*,scalar_t__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(const m_option_t *opt, const void *val)
{
    m_obj_settings_t *list = FUNC0(val);
    char *res = FUNC3(NULL, "");
    for (int n = 0; list && list[n].name; n++) {
        m_obj_settings_t *entry = &list[n];
        if (n > 0)
            res = FUNC4(res, ",");
        // Assume labels and names don't need escaping
        if (entry->label && entry->label[0])
            res = FUNC2(res, "@%s:", entry->label);
        if (!entry->enabled)
            res = FUNC4(res, "!");
        res = FUNC4(res, entry->name);
        if (entry->attribs && entry->attribs[0]) {
            res = FUNC4(res, "=");
            for (int i = 0; entry->attribs[i * 2 + 0]; i++) {
                if (i > 0)
                    res = FUNC4(res, ":");
                FUNC1(&res, entry->attribs[i * 2 + 0]);
                res = FUNC4(res, "=");
                FUNC1(&res, entry->attribs[i * 2 + 1]);
            }
        }
    }
    return res;
}