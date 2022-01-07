
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int ossl_intmax_t ;
typedef enum range { ____Placeholder_range } range ;
typedef int X509_VERIFY_PARAM ;
typedef int X509_PURPOSE ;
typedef int ASN1_OBJECT ;


 int * OBJ_txt2obj (int ,int ) ;
 int OPENSSL_assert (int) ;
 int * X509_PURPOSE_get0 (int) ;
 int X509_PURPOSE_get_by_sname (int ) ;
 int X509_PURPOSE_get_id (int *) ;
 int X509_VERIFY_PARAM_add0_policy (int *,int *) ;
 int * X509_VERIFY_PARAM_lookup (int ) ;
 int X509_VERIFY_PARAM_set1 (int *,int const*) ;
 int X509_VERIFY_PARAM_set1_email (int *,int ,int ) ;
 int X509_VERIFY_PARAM_set1_host (int *,int ,int ) ;
 int X509_VERIFY_PARAM_set1_ip_asc (int *,int ) ;
 int X509_VERIFY_PARAM_set_auth_level (int *,int) ;
 int X509_VERIFY_PARAM_set_depth (int *,int) ;
 int X509_VERIFY_PARAM_set_flags (int *,int) ;
 int X509_VERIFY_PARAM_set_purpose (int *,int) ;
 int X509_VERIFY_PARAM_set_time (int *,int ) ;
 int X509_V_FLAG_ALLOW_PROXY_CERTS ;
 int X509_V_FLAG_CHECK_SS_SIGNATURE ;
 int X509_V_FLAG_CRL_CHECK ;
 int X509_V_FLAG_CRL_CHECK_ALL ;
 int X509_V_FLAG_EXPLICIT_POLICY ;
 int X509_V_FLAG_EXTENDED_CRL_SUPPORT ;
 int X509_V_FLAG_IGNORE_CRITICAL ;
 int X509_V_FLAG_INHIBIT_ANY ;
 int X509_V_FLAG_INHIBIT_MAP ;
 int X509_V_FLAG_NOTIFY_POLICY ;
 int X509_V_FLAG_NO_ALT_CHAINS ;
 int X509_V_FLAG_NO_CHECK_TIME ;
 int X509_V_FLAG_PARTIAL_CHAIN ;
 int X509_V_FLAG_POLICY_CHECK ;
 int X509_V_FLAG_SUITEB_128_LOS ;
 int X509_V_FLAG_SUITEB_128_LOS_ONLY ;
 int X509_V_FLAG_SUITEB_192_LOS ;
 int X509_V_FLAG_TRUSTED_FIRST ;
 int X509_V_FLAG_USE_DELTAS ;
 int X509_V_FLAG_X509_STRICT ;
 int atoi (int ) ;
 int opt_arg () ;
 int opt_imax (int ,int *) ;
 int opt_printf_stderr (char*,int ,int ) ;
 int prog ;

int opt_verify(int opt, X509_VERIFY_PARAM *vpm)
{
    int i;
    ossl_intmax_t t = 0;
    ASN1_OBJECT *otmp;
    X509_PURPOSE *xptmp;
    const X509_VERIFY_PARAM *vtmp;

    OPENSSL_assert(vpm != ((void*)0));
    OPENSSL_assert(opt > 129);
    OPENSSL_assert(opt < 128);

    switch ((enum range)opt) {
    case 129:
    case 128:
        return 0;
    case 145:
        otmp = OBJ_txt2obj(opt_arg(), 0);
        if (otmp == ((void*)0)) {
            opt_printf_stderr("%s: Invalid Policy %s\n", prog, opt_arg());
            return 0;
        }
        X509_VERIFY_PARAM_add0_policy(vpm, otmp);
        break;
    case 142:

        i = X509_PURPOSE_get_by_sname(opt_arg());
        if (i < 0) {
            opt_printf_stderr("%s: Invalid purpose %s\n", prog, opt_arg());
            return 0;
        }


        xptmp = X509_PURPOSE_get0(i);


        i = X509_PURPOSE_get_id(xptmp);

        if (!X509_VERIFY_PARAM_set_purpose(vpm, i)) {
            opt_printf_stderr("%s: Internal error setting purpose %s\n",
                              prog, opt_arg());
            return 0;
        }
        break;
    case 131:
        vtmp = X509_VERIFY_PARAM_lookup(opt_arg());
        if (vtmp == ((void*)0)) {
            opt_printf_stderr("%s: Invalid verify name %s\n",
                              prog, opt_arg());
            return 0;
        }
        X509_VERIFY_PARAM_set1(vpm, vtmp);
        break;
    case 135:
        i = atoi(opt_arg());
        if (i >= 0)
            X509_VERIFY_PARAM_set_depth(vpm, i);
        break;
    case 136:
        i = atoi(opt_arg());
        if (i >= 0)
            X509_VERIFY_PARAM_set_auth_level(vpm, i);
        break;
    case 158:
        if (!opt_imax(opt_arg(), &t))
            return 0;
        if (t != (time_t)t) {
            opt_printf_stderr("%s: epoch time out of range %s\n",
                              prog, opt_arg());
            return 0;
        }
        X509_VERIFY_PARAM_set_time(vpm, (time_t)t);
        break;
    case 133:
        if (!X509_VERIFY_PARAM_set1_host(vpm, opt_arg(), 0))
            return 0;
        break;
    case 134:
        if (!X509_VERIFY_PARAM_set1_email(vpm, opt_arg(), 0))
            return 0;
        break;
    case 132:
        if (!X509_VERIFY_PARAM_set1_ip_asc(vpm, opt_arg()))
            return 0;
        break;
    case 152:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_IGNORE_CRITICAL);
        break;
    case 149:

        break;
    case 156:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_CRL_CHECK);
        break;
    case 155:
        X509_VERIFY_PARAM_set_flags(vpm,
                                    X509_V_FLAG_CRL_CHECK |
                                    X509_V_FLAG_CRL_CHECK_ALL);
        break;
    case 144:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_POLICY_CHECK);
        break;
    case 154:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_EXPLICIT_POLICY);
        break;
    case 151:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_INHIBIT_ANY);
        break;
    case 150:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_INHIBIT_MAP);
        break;
    case 130:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_X509_STRICT);
        break;
    case 153:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_EXTENDED_CRL_SUPPORT);
        break;
    case 137:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_USE_DELTAS);
        break;
    case 143:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_NOTIFY_POLICY);
        break;
    case 157:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_CHECK_SS_SIGNATURE);
        break;
    case 138:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_TRUSTED_FIRST);
        break;
    case 140:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_SUITEB_128_LOS_ONLY);
        break;
    case 141:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_SUITEB_128_LOS);
        break;
    case 139:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_SUITEB_192_LOS);
        break;
    case 146:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_PARTIAL_CHAIN);
        break;
    case 148:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_NO_ALT_CHAINS);
        break;
    case 147:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_NO_CHECK_TIME);
        break;
    case 159:
        X509_VERIFY_PARAM_set_flags(vpm, X509_V_FLAG_ALLOW_PROXY_CERTS);
        break;
    }
    return 1;

}
