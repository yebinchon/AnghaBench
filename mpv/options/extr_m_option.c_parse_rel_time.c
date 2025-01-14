
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_rel_time {double pos; int type; int member_0; } ;
struct bstr {scalar_t__ len; } ;
typedef int m_option_t ;


 int BSTR_P (struct bstr) ;
 int M_OPT_INVALID ;
 int M_OPT_MISSING_PARAM ;
 int REL_TIME_ABSOLUTE ;
 int REL_TIME_CHAPTER ;
 int REL_TIME_NONE ;
 int REL_TIME_PERCENT ;
 int REL_TIME_RELATIVE ;
 int bstr_cut (struct bstr,int) ;
 scalar_t__ bstr_endswith0 (struct bstr,char*) ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 int bstr_splice (struct bstr,int ,int) ;
 scalar_t__ bstr_startswith0 (struct bstr,char*) ;
 double bstrtod (int ,struct bstr*) ;
 int bstrtoll (int ,struct bstr*,int) ;
 int mp_err (struct mp_log*,char*,int ,int ) ;
 scalar_t__ parse_timestring (struct bstr,double*,int ) ;

__attribute__((used)) static int parse_rel_time(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    struct m_rel_time t = {0};

    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    if (bstr_equals0(param, "none")) {
        t.type = REL_TIME_NONE;
        goto out;
    }


    if (bstr_endswith0(param, "%")) {
        double percent = bstrtod(bstr_splice(param, 0, -1), &param);
        if (param.len == 0 && percent >= 0 && percent <= 100) {
            t.type = REL_TIME_PERCENT;
            t.pos = percent;
            goto out;
        }
    }


    if (bstr_startswith0(param, "#")) {
        int chapter = bstrtoll(bstr_cut(param, 1), &param, 10);
        if (param.len == 0 && chapter >= 1) {
            t.type = REL_TIME_CHAPTER;
            t.pos = chapter - 1;
            goto out;
        }
    }

    double time;
    if (parse_timestring(param, &time, 0)) {
        if (bstr_startswith0(param, "+") || bstr_startswith0(param, "-")) {
            t.type = REL_TIME_RELATIVE;
        } else {
            t.type = REL_TIME_ABSOLUTE;
        }
        t.pos = time;
        goto out;
    }

    mp_err(log, "Option %.*s: invalid time or position: '%.*s'\n",
           BSTR_P(name), BSTR_P(param));
    return M_OPT_INVALID;

out:
    if (dst)
        *(struct m_rel_time *)dst = t;
    return 1;
}
