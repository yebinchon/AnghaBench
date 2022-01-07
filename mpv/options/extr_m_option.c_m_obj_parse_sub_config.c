
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct mp_log {int dummy; } ;
struct m_obj_list {int (* print_unknown_entry_help ) (struct mp_log*,int ) ;scalar_t__ use_global_options; } ;
struct m_obj_desc {int (* print_help ) (struct mp_log*) ;} ;
struct m_config {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef int bstr ;


 int BSTR_P (struct bstr) ;
 int MP_TARRAY_APPEND (int *,char**,int,int *) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 int bstr_eatstart0 (struct bstr*,char*) ;
 scalar_t__ bstr_equals0 (int ,char*) ;
 int * bstrto0 (int *,int ) ;
 int free_str_list (char***) ;
 int get_obj_param (struct mp_log*,struct bstr,struct bstr,struct m_config*,int ,int ,int,int,int*,int *,int *,char*,int) ;
 int m_config_print_option_list (struct m_config*,char*) ;
 int mp_err (struct mp_log*,char*,...) ;
 int mp_tprintf (int,char*,int ) ;
 int mp_warn (struct mp_log*,char*,int ,int ) ;
 int split_subconf (struct mp_log*,struct bstr,struct bstr*,int *,int *) ;
 int stub1 (struct mp_log*) ;
 int stub2 (struct mp_log*,int ) ;

__attribute__((used)) static int m_obj_parse_sub_config(struct mp_log *log, struct bstr opt_name,
                                  struct bstr name, struct bstr *pstr,
                                  struct m_config *config, int flags, bool nopos,
                                  struct m_obj_desc *desc,
                                  const struct m_obj_list *list, char ***ret)
{
    int nold = 0;
    char **args = ((void*)0);
    int num_args = 0;
    int r = 1;
    char tmp[80];

    if (ret) {
        args = *ret;
        while (args && args[num_args])
            num_args++;
    }

    while (pstr->len > 0) {
        bstr fname, fval;
        r = split_subconf(log, opt_name, pstr, &fname, &fval);
        if (r < 0)
            goto exit;

        if (list->use_global_options) {
            mp_err(log, "Option %.*s: this option does not accept sub-options.\n",
                   BSTR_P(opt_name));
            mp_err(log, "Sub-options for --vo and --ao were removed from mpv in "
                   "release 0.23.0.\nSee https://0x0.st/uM for details.\n");
            r = M_OPT_INVALID;
            goto exit;
        }

        if (bstr_equals0(fname, "help"))
            goto print_help;
        r = get_obj_param(log, opt_name, name, config, fname, fval, flags,
                          nopos, &nold, &fname, &fval, tmp, sizeof(tmp));
        if (r < 0)
            goto exit;

        if (r > 0 && ret) {
            MP_TARRAY_APPEND(((void*)0), args, num_args, bstrto0(((void*)0), fname));
            MP_TARRAY_APPEND(((void*)0), args, num_args, bstrto0(((void*)0), fval));
            MP_TARRAY_APPEND(((void*)0), args, num_args, ((void*)0));
            MP_TARRAY_APPEND(((void*)0), args, num_args, ((void*)0));
            num_args -= 2;
        }

        if (!bstr_eatstart0(pstr, ":"))
            break;
    }

    if (ret) {
        if (num_args > 0) {
            *ret = args;
            args = ((void*)0);
        } else {
            *ret = ((void*)0);
        }
    }

    goto exit;

print_help: ;
    if (config) {
        if (desc->print_help)
            desc->print_help(log);
        m_config_print_option_list(config, "*");
    } else if (list->print_unknown_entry_help) {
        list->print_unknown_entry_help(log, mp_tprintf(80, "%.*s", BSTR_P(name)));
    } else {
        mp_warn(log, "Option %.*s: item %.*s doesn't exist.\n",
               BSTR_P(opt_name), BSTR_P(name));
    }
    r = M_OPT_EXIT;

exit:
    free_str_list(&args);
    return r;
}
