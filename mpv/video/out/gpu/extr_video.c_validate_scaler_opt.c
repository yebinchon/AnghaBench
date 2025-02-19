
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
typedef int s ;
typedef int m_option_t ;
struct TYPE_3__ {char const* const name; } ;
struct TYPE_4__ {TYPE_1__ f; int polar; } ;


 char* BSTR_P (struct bstr) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 int bstr_equals0 (struct bstr,char*) ;
 char** fixed_scale_filters ;
 char** fixed_tscale_filters ;
 int handle_scaler_opt (char*,int) ;
 int mp_fatal (struct mp_log*,char*,char*) ;
 TYPE_2__* mp_filter_kernels ;
 int mp_info (struct mp_log*,char*,...) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int validate_scaler_opt(struct mp_log *log, const m_option_t *opt,
                               struct bstr name, struct bstr param)
{
    char s[20] = {0};
    int r = 1;
    bool tscale = bstr_equals0(name, "tscale");
    if (bstr_equals0(param, "help")) {
        r = M_OPT_EXIT;
    } else {
        snprintf(s, sizeof(s), "%.*s", BSTR_P(param));
        if (!handle_scaler_opt(s, tscale))
            r = M_OPT_INVALID;
    }
    if (r < 1) {
        mp_info(log, "Available scalers:\n");
        for (const char *const *filter = tscale ? fixed_tscale_filters
                                                : fixed_scale_filters;
             *filter; filter++) {
            mp_info(log, "    %s\n", *filter);
        }
        for (int n = 0; mp_filter_kernels[n].f.name; n++) {
            if (!tscale || !mp_filter_kernels[n].polar)
                mp_info(log, "    %s\n", mp_filter_kernels[n].f.name);
        }
        if (s[0])
            mp_fatal(log, "No scaler named '%s' found!\n", s);
    }
    return r;
}
