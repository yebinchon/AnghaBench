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
struct m_config_option {char* name; } ;
struct m_config {scalar_t__ recursion_depth; scalar_t__ profile_depth; int /*<<< orphan*/  log; scalar_t__ is_toplevel; scalar_t__ use_profiles; int /*<<< orphan*/  includefunc_ctx; int /*<<< orphan*/  (* includefunc ) (int /*<<< orphan*/ ,char*,int) ;int /*<<< orphan*/  profiles; } ;

/* Variables and functions */
 scalar_t__ MAX_RECURSION_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct m_config*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct m_config*,char*) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 int M_OPT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct m_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_config*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_config*,char*) ; 
 int FUNC6 (struct m_config*,char*,int) ; 
 int /*<<< orphan*/  mp_help_text ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct m_config*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC11(struct m_config *config,
                                           struct m_config_option *co,
                                           void *data, int flags)
{
    if (config->use_profiles && FUNC9(co->name, "profile") == 0) {
        char **list = *(char ***)data;

        if (list && list[0] && !list[1] && FUNC9(list[0], "help") == 0) {
            if (!config->profiles) {
                FUNC1(config, "No profiles have been defined.\n");
                return M_OPT_EXIT;
            }
            FUNC3(config);
            return M_OPT_EXIT;
        }

        for (int n = 0; list && list[n]; n++) {
            int r = FUNC6(config, list[n], flags);
            if (r < 0)
                return r;
        }
        return 0;
    }

    if (config->includefunc && FUNC9(co->name, "include") == 0) {
        char *param = *(char **)data;
        if (!param || !param[0])
            return M_OPT_MISSING_PARAM;
        if (config->recursion_depth >= MAX_RECURSION_DEPTH) {
            FUNC0(config, "Maximum 'include' nesting depth exceeded.\n");
            return M_OPT_INVALID;
        }
        config->recursion_depth += 1;
        config->includefunc(config->includefunc_ctx, param, flags);
        config->recursion_depth -= 1;
        if (config->recursion_depth == 0 && config->profile_depth == 0)
            FUNC4(config, flags);
        return 1;
    }

    if (config->use_profiles && FUNC9(co->name, "show-profile") == 0)
        return FUNC8(config, FUNC2(*(char **)data));

    if (config->is_toplevel && (FUNC9(co->name, "h") == 0 ||
                                FUNC9(co->name, "help") == 0))
    {
        char *h = *(char **)data;
        FUNC7(config->log, "%s", mp_help_text);
        if (h && h[0])
            FUNC5(config, h);
        return M_OPT_EXIT;
    }

    if (FUNC9(co->name, "list-options") == 0) {
        FUNC5(config, "*");
        return M_OPT_EXIT;
    }

    return M_OPT_UNKNOWN;
}