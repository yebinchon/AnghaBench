
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {char* name; } ;
struct m_config {scalar_t__ recursion_depth; scalar_t__ profile_depth; int log; scalar_t__ is_toplevel; scalar_t__ use_profiles; int includefunc_ctx; int (* includefunc ) (int ,char*,int) ;int profiles; } ;


 scalar_t__ MAX_RECURSION_DEPTH ;
 int MP_ERR (struct m_config*,char*) ;
 int MP_INFO (struct m_config*,char*) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 int M_OPT_MISSING_PARAM ;
 int M_OPT_UNKNOWN ;
 int bstr0 (char*) ;
 int list_profiles (struct m_config*) ;
 int m_config_finish_default_profile (struct m_config*,int) ;
 int m_config_print_option_list (struct m_config*,char*) ;
 int m_config_set_profile (struct m_config*,char*,int) ;
 int mp_help_text ;
 int mp_info (int ,char*,int ) ;
 int show_profile (struct m_config*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int ,char*,int) ;

__attribute__((used)) static int m_config_handle_special_options(struct m_config *config,
                                           struct m_config_option *co,
                                           void *data, int flags)
{
    if (config->use_profiles && strcmp(co->name, "profile") == 0) {
        char **list = *(char ***)data;

        if (list && list[0] && !list[1] && strcmp(list[0], "help") == 0) {
            if (!config->profiles) {
                MP_INFO(config, "No profiles have been defined.\n");
                return M_OPT_EXIT;
            }
            list_profiles(config);
            return M_OPT_EXIT;
        }

        for (int n = 0; list && list[n]; n++) {
            int r = m_config_set_profile(config, list[n], flags);
            if (r < 0)
                return r;
        }
        return 0;
    }

    if (config->includefunc && strcmp(co->name, "include") == 0) {
        char *param = *(char **)data;
        if (!param || !param[0])
            return M_OPT_MISSING_PARAM;
        if (config->recursion_depth >= MAX_RECURSION_DEPTH) {
            MP_ERR(config, "Maximum 'include' nesting depth exceeded.\n");
            return M_OPT_INVALID;
        }
        config->recursion_depth += 1;
        config->includefunc(config->includefunc_ctx, param, flags);
        config->recursion_depth -= 1;
        if (config->recursion_depth == 0 && config->profile_depth == 0)
            m_config_finish_default_profile(config, flags);
        return 1;
    }

    if (config->use_profiles && strcmp(co->name, "show-profile") == 0)
        return show_profile(config, bstr0(*(char **)data));

    if (config->is_toplevel && (strcmp(co->name, "h") == 0 ||
                                strcmp(co->name, "help") == 0))
    {
        char *h = *(char **)data;
        mp_info(config->log, "%s", mp_help_text);
        if (h && h[0])
            m_config_print_option_list(config, h);
        return M_OPT_EXIT;
    }

    if (strcmp(co->name, "list-options") == 0) {
        m_config_print_option_list(config, "*");
        return M_OPT_EXIT;
    }

    return M_OPT_UNKNOWN;
}
