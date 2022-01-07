
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1 ;
 int RSA_PKCS1_PADDING_SIZE ;
 int RSA_R_BAD_FIXED_HEADER_DECRYPT ;
 int RSA_R_BAD_PAD_BYTE_COUNT ;
 int RSA_R_BLOCK_TYPE_IS_NOT_01 ;
 int RSA_R_DATA_TOO_LARGE ;
 int RSA_R_INVALID_PADDING ;
 int RSA_R_NULL_BEFORE_BLOCK_MISSING ;
 int RSAerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

int RSA_padding_check_PKCS1_type_1(unsigned char *to, int tlen,
                                   const unsigned char *from, int flen,
                                   int num)
{
    int i, j;
    const unsigned char *p;

    p = from;
    if (num < RSA_PKCS1_PADDING_SIZE)
        return -1;


    if (num == flen) {
        if ((*p++) != 0x00) {
            RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1,
                   RSA_R_INVALID_PADDING);
            return -1;
        }
        flen--;
    }

    if ((num != (flen + 1)) || (*(p++) != 0x01)) {
        RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1,
               RSA_R_BLOCK_TYPE_IS_NOT_01);
        return -1;
    }


    j = flen - 1;
    for (i = 0; i < j; i++) {
        if (*p != 0xff) {
            if (*p == 0) {
                p++;
                break;
            } else {
                RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1,
                       RSA_R_BAD_FIXED_HEADER_DECRYPT);
                return -1;
            }
        }
        p++;
    }

    if (i == j) {
        RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1,
               RSA_R_NULL_BEFORE_BLOCK_MISSING);
        return -1;
    }

    if (i < 8) {
        RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1,
               RSA_R_BAD_PAD_BYTE_COUNT);
        return -1;
    }
    i++;
    j -= i;
    if (j > tlen) {
        RSAerr(RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, RSA_R_DATA_TOO_LARGE);
        return -1;
    }
    memcpy(to, p, (unsigned int)j);

    return j;
}
