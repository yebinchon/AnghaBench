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
struct mp_log {int dummy; } ;
struct m_option {int dummy; } ;
struct bstr {int /*<<< orphan*/  start; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 struct bstr FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bstr,char*) ; 
 int FUNC3 (struct mp_log*,struct bstr,struct bstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mp_log *log,
                                  const struct m_option *opt,
                                  struct bstr name, struct bstr param)
{
    bool help = FUNC2(param, "help");
    bool adapter_matched = false;
    struct bstr listing = { 0 };

    if (FUNC2(param, "")) {
        return 0;
    }

    adapter_matched = FUNC3(log,
                                                       help ? FUNC1(NULL) : param,
                                                       help ? &listing : NULL);

    if (help) {
        FUNC5(log, "Available D3D11 adapters:\n%.*s",
                FUNC0(listing));
        FUNC6(listing.start);
        return M_OPT_EXIT;
    }

    if (!adapter_matched) {
        FUNC4(log, "No adapter matching '%.*s'!\n", FUNC0(param));
    }

    return adapter_matched ? 0 : M_OPT_INVALID;
}