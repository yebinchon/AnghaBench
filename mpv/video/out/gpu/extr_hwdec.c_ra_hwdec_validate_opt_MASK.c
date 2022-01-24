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
struct ra_hwdec_driver {char* name; } ;
struct mp_log {int dummy; } ;
struct bstr {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int FUNC1 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,...) ; 
 struct ra_hwdec_driver** ra_hwdec_drivers ; 

int FUNC4(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param)
{
    bool help = FUNC1(param, "help");
    if (help)
        FUNC3(log, "Available hwdecs:\n");
    for (int n = 0; ra_hwdec_drivers[n]; n++) {
        const struct ra_hwdec_driver *drv = ra_hwdec_drivers[n];
        if (help) {
            FUNC3(log, "    %s\n", drv->name);
        } else if (FUNC1(param, drv->name)) {
            return 1;
        }
    }
    if (help) {
        FUNC3(log, "    auto (behavior depends on context)\n"
                     "    all (load all hwdecs)\n"
                     "    no (do not load any and block loading on demand)\n");
        return M_OPT_EXIT;
    }
    if (!param.len)
        return 1; // "" is treated specially
    if (FUNC1(param, "all") || FUNC1(param, "auto") ||
        FUNC1(param, "no"))
        return 1;
    FUNC2(log, "No hwdec backend named '%.*s' found!\n", FUNC0(param));
    return M_OPT_INVALID;
}