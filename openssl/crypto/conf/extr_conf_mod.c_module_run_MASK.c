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
typedef  int /*<<< orphan*/  rcode ;
typedef  int /*<<< orphan*/  CONF_MODULE ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  CONF_F_MODULE_RUN ; 
 unsigned long CONF_MFLAGS_NO_DSO ; 
 unsigned long CONF_MFLAGS_SILENT ; 
 int /*<<< orphan*/  CONF_R_MODULE_INITIALIZATION_ERROR ; 
 int /*<<< orphan*/  CONF_R_UNKNOWN_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(const CONF *cnf, const char *name, const char *value,
                      unsigned long flags)
{
    CONF_MODULE *md;
    int ret;

    md = FUNC4(name);

    /* Module not found: try to load DSO */
    if (!md && !(flags & CONF_MFLAGS_NO_DSO))
        md = FUNC6(cnf, name, value);

    if (!md) {
        if (!(flags & CONF_MFLAGS_SILENT)) {
            FUNC1(CONF_F_MODULE_RUN, CONF_R_UNKNOWN_MODULE_NAME);
            FUNC3(2, "module=", name);
        }
        return -1;
    }

    ret = FUNC5(md, name, value, cnf);

    if (ret <= 0) {
        if (!(flags & CONF_MFLAGS_SILENT)) {
            char rcode[FUNC2(ret) + 1];

            FUNC1(CONF_F_MODULE_RUN, CONF_R_MODULE_INITIALIZATION_ERROR);
            FUNC0(rcode, sizeof(rcode), "%-8d", ret);
            FUNC3(6, "module=", name, ", value=", value,
                               ", retcode=", rcode);
        }
    }

    return ret;
}