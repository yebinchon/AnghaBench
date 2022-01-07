
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS12 ;


 int PKCS12_F_PKCS12_NEWPASS ;
 int PKCS12_R_INVALID_NULL_PKCS12_POINTER ;
 int PKCS12_R_MAC_VERIFY_FAILURE ;
 int PKCS12_R_PARSE_ERROR ;
 int PKCS12_verify_mac (int *,char const*,int) ;
 int PKCS12err (int ,int ) ;
 int newpass_p12 (int *,char const*,char const*) ;

int PKCS12_newpass(PKCS12 *p12, const char *oldpass, const char *newpass)
{


    if (p12 == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_NEWPASS,
                  PKCS12_R_INVALID_NULL_PKCS12_POINTER);
        return 0;
    }



    if (!PKCS12_verify_mac(p12, oldpass, -1)) {
        PKCS12err(PKCS12_F_PKCS12_NEWPASS, PKCS12_R_MAC_VERIFY_FAILURE);
        return 0;
    }

    if (!newpass_p12(p12, oldpass, newpass)) {
        PKCS12err(PKCS12_F_PKCS12_NEWPASS, PKCS12_R_PARSE_ERROR);
        return 0;
    }

    return 1;
}
