
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_geometry {scalar_t__ xy_valid; } ;
struct bstr {int dummy; } ;
typedef int m_option_t ;


 int BSTR_P (struct bstr) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 int bstr_equals0 (struct bstr,char*) ;
 int mp_err (struct mp_log*,char*,int ,int ) ;
 int mp_info (struct mp_log*,char*) ;
 int parse_geometry_str (struct m_geometry*,struct bstr) ;

__attribute__((used)) static int parse_size_box(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    bool is_help = bstr_equals0(param, "help");
    if (is_help)
        goto exit;

    struct m_geometry gm;
    if (!parse_geometry_str(&gm, param))
        goto exit;

    if (gm.xy_valid)
        goto exit;

    if (dst)
        *((struct m_geometry *)dst) = gm;

    return 1;

exit:
    if (!is_help) {
        mp_err(log, "Option %.*s: invalid size: '%.*s'\n",
               BSTR_P(name), BSTR_P(param));
    }
    mp_info(log, "Valid format: W[%%][xH[%%]] or empty string\n");
    return is_help ? M_OPT_EXIT : M_OPT_INVALID;
}
