
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int EXFLAG_XKUSAGE ;
 int OCSP_F_OCSP_CHECK_DELEGATED ;
 int OCSP_R_MISSING_OCSPSIGNING_USAGE ;
 int OCSPerr (int ,int ) ;
 int X509_get_extended_key_usage (int *) ;
 int X509_get_extension_flags (int *) ;
 int XKU_OCSP_SIGN ;

__attribute__((used)) static int ocsp_check_delegated(X509 *x)
{
    if ((X509_get_extension_flags(x) & EXFLAG_XKUSAGE)
        && (X509_get_extended_key_usage(x) & XKU_OCSP_SIGN))
        return 1;
    OCSPerr(OCSP_F_OCSP_CHECK_DELEGATED, OCSP_R_MISSING_OCSPSIGNING_USAGE);
    return 0;
}
