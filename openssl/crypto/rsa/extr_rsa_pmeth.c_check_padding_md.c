
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int EVP_MD_type (int const*) ;
 int RSA_F_CHECK_PADDING_MD ;
 int RSA_NO_PADDING ;
 int RSA_R_INVALID_DIGEST ;
 int RSA_R_INVALID_PADDING_MODE ;
 int RSA_R_INVALID_X931_DIGEST ;
 int RSA_X931_PADDING ;
 int RSA_X931_hash_id (int) ;
 int RSAerr (int ,int ) ;

__attribute__((used)) static int check_padding_md(const EVP_MD *md, int padding)
{
    int mdnid;

    if (!md)
        return 1;

    mdnid = EVP_MD_type(md);

    if (padding == RSA_NO_PADDING) {
        RSAerr(RSA_F_CHECK_PADDING_MD, RSA_R_INVALID_PADDING_MODE);
        return 0;
    }

    if (padding == RSA_X931_PADDING) {
        if (RSA_X931_hash_id(mdnid) == -1) {
            RSAerr(RSA_F_CHECK_PADDING_MD, RSA_R_INVALID_X931_DIGEST);
            return 0;
        }
    } else {
        switch(mdnid) {

        case 136:
        case 135:
        case 134:
        case 133:
        case 128:
        case 140:
        case 139:
        case 142:
        case 141:
        case 138:
        case 137:
        case 132:
        case 131:
        case 130:
        case 129:
            return 1;

        default:
            RSAerr(RSA_F_CHECK_PADDING_MD, RSA_R_INVALID_DIGEST);
            return 0;

        }
    }

    return 1;
}
