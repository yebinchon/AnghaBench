
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int KU_KEY_ENCIPHERMENT ;
 scalar_t__ ku_reject (int const*,int ) ;
 int purpose_smime (int const*,int) ;

__attribute__((used)) static int check_purpose_smime_encrypt(const X509_PURPOSE *xp, const X509 *x,
                                       int ca)
{
    int ret;
    ret = purpose_smime(x, ca);
    if (!ret || ca)
        return ret;
    if (ku_reject(x, KU_KEY_ENCIPHERMENT))
        return 0;
    return ret;
}
