
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ex_nscert; int ex_flags; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_NSCERT ;
 int NS_SMIME ;
 int NS_SMIME_CA ;
 int NS_SSL_CLIENT ;
 int XKU_SMIME ;
 int check_ca (TYPE_1__ const*) ;
 scalar_t__ xku_reject (TYPE_1__ const*,int ) ;

__attribute__((used)) static int purpose_smime(const X509 *x, int ca)
{
    if (xku_reject(x, XKU_SMIME))
        return 0;
    if (ca) {
        int ca_ret;
        ca_ret = check_ca(x);
        if (!ca_ret)
            return 0;

        if (ca_ret != 5 || x->ex_nscert & NS_SMIME_CA)
            return ca_ret;
        else
            return 0;
    }
    if (x->ex_flags & EXFLAG_NSCERT) {
        if (x->ex_nscert & NS_SMIME)
            return 1;

        if (x->ex_nscert & NS_SSL_CLIENT)
            return 2;
        return 0;
    }
    return 1;
}
