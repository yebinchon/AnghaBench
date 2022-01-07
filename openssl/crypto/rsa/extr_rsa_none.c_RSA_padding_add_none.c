
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSA_F_RSA_PADDING_ADD_NONE ;
 int RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ;
 int RSA_R_DATA_TOO_SMALL_FOR_KEY_SIZE ;
 int RSAerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

int RSA_padding_add_none(unsigned char *to, int tlen,
                         const unsigned char *from, int flen)
{
    if (flen > tlen) {
        RSAerr(RSA_F_RSA_PADDING_ADD_NONE, RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return 0;
    }

    if (flen < tlen) {
        RSAerr(RSA_F_RSA_PADDING_ADD_NONE, RSA_R_DATA_TOO_SMALL_FOR_KEY_SIZE);
        return 0;
    }

    memcpy(to, from, (unsigned int)flen);
    return 1;
}
