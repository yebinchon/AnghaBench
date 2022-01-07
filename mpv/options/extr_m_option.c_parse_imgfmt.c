
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ min; } ;
typedef TYPE_1__ m_option_t ;


 int BSTR_P (struct bstr) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 int M_OPT_MISSING_PARAM ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 int bstrcmp0 (struct bstr,char*) ;
 int mp_err (struct mp_log*,char*,int ,int ) ;
 unsigned int mp_imgfmt_from_name (struct bstr) ;
 char** mp_imgfmt_name_list () ;
 int mp_info (struct mp_log*,char*,...) ;
 int talloc_free (char**) ;

__attribute__((used)) static int parse_imgfmt(struct mp_log *log, const m_option_t *opt,
                        struct bstr name, struct bstr param, void *dst)
{
    bool accept_no = opt->min < 0;

    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    if (!bstrcmp0(param, "help")) {
        mp_info(log, "Available formats:");
        char **list = mp_imgfmt_name_list();
        for (int i = 0; list[i]; i++)
            mp_info(log, " %s", list[i]);
        if (accept_no)
            mp_info(log, " no");
        mp_info(log, "\n");
        talloc_free(list);
        return M_OPT_EXIT;
    }

    unsigned int fmt = mp_imgfmt_from_name(param);
    if (!fmt && !(accept_no && bstr_equals0(param, "no"))) {
        mp_err(log, "Option %.*s: unknown format name: '%.*s'\n",
               BSTR_P(name), BSTR_P(param));
        return M_OPT_INVALID;
    }

    if (dst)
        *((int *)dst) = fmt;

    return 1;
}
