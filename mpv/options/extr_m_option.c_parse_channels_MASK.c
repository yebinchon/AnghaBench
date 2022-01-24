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
struct mp_log {int dummy; } ;
struct mp_chmap {int /*<<< orphan*/  member_0; } ;
struct m_channels {int set; int auto_safe; int /*<<< orphan*/  chmaps; int /*<<< orphan*/  num_chmaps; int /*<<< orphan*/  member_0; } ;
struct bstr {scalar_t__ len; } ;
struct TYPE_3__ {int min; } ;
typedef  TYPE_1__ m_option_t ;
typedef  struct bstr bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_chmap) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int FUNC2 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstr,char*,struct bstr*,struct bstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_chmap*,struct bstr) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    // see OPT_CHANNELS for semantics.
    bool limited = opt->min;

    struct m_channels res = {0};

    if (FUNC2(param, "help")) {
        FUNC6(log);
        if (!limited) {
            FUNC8(log, "\nOther values:\n"
                         "    auto-safe\n");
        }
        return M_OPT_EXIT;
    }

    bool auto_safe = FUNC2(param, "auto-safe");
    if (FUNC2(param, "auto") || FUNC2(param, "empty") || auto_safe) {
        if (limited) {
            FUNC7(log, "Disallowed parameter.\n");
            return M_OPT_INVALID;
        }
        param.len = 0;
        res.set = true;
        res.auto_safe = auto_safe;
    }

    while (param.len) {
        bstr item;
        if (limited) {
            item = param;
            param.len = 0;
        } else {
            FUNC3(param, ",", &item, &param);
        }

        struct mp_chmap map = {0};
        if (!FUNC4(&map, item) || !FUNC5(&map)) {
            FUNC7(log, "Invalid channel layout: %.*s\n", FUNC0(item));
            FUNC9(res.chmaps);
            return M_OPT_INVALID;
        }

        FUNC1(NULL, res.chmaps, res.num_chmaps, map);
        res.set = true;
    }

    if (dst) {
        *(struct m_channels *)dst = res;
    } else {
        FUNC9(res.chmaps);
    }

    return 1;
}