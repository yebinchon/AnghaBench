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
struct m_channels {scalar_t__ num_chmaps; int /*<<< orphan*/ * chmaps; scalar_t__ auto_safe; int /*<<< orphan*/  set; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(const m_option_t *opt, const void *val)
{
    const struct m_channels *ch = val;
    if (!ch->set)
        return FUNC1(NULL, "");
    if (ch->auto_safe)
        return FUNC1(NULL, "auto-safe");
    if (ch->num_chmaps > 0) {
        char *res = FUNC1(NULL, "");
        for (int n = 0; n < ch->num_chmaps; n++) {
            if (n > 0)
                res = FUNC2(res, ",");
            res = FUNC2(res, FUNC0(&ch->chmaps[n]));
        }
        return res;
    }
    return FUNC1(NULL, "auto");
}