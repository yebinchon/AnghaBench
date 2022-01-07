
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_option {int dummy; } ;
struct bstr {int start; int member_0; } ;


 int BSTR_P (struct bstr) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 struct bstr bstr0 (int *) ;
 int bstr_equals0 (struct bstr,char*) ;
 int mp_d3d11_list_or_verify_adapters (struct mp_log*,struct bstr,struct bstr*) ;
 int mp_err (struct mp_log*,char*,int ) ;
 int mp_info (struct mp_log*,char*,int ) ;
 int talloc_free (int ) ;

__attribute__((used)) static int d3d11_validate_adapter(struct mp_log *log,
                                  const struct m_option *opt,
                                  struct bstr name, struct bstr param)
{
    bool help = bstr_equals0(param, "help");
    bool adapter_matched = 0;
    struct bstr listing = { 0 };

    if (bstr_equals0(param, "")) {
        return 0;
    }

    adapter_matched = mp_d3d11_list_or_verify_adapters(log,
                                                       help ? bstr0(((void*)0)) : param,
                                                       help ? &listing : ((void*)0));

    if (help) {
        mp_info(log, "Available D3D11 adapters:\n%.*s",
                BSTR_P(listing));
        talloc_free(listing.start);
        return M_OPT_EXIT;
    }

    if (!adapter_matched) {
        mp_err(log, "No adapter matching '%.*s'!\n", BSTR_P(param));
    }

    return adapter_matched ? 0 : M_OPT_INVALID;
}
