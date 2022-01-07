
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int BIGNUM ;


 int ASN1_PRINT_MAX_INDENT ;
 scalar_t__ ASN1_buf_print (int *,unsigned char*,int,int) ;
 int BIO_indent (int *,int,int ) ;
 scalar_t__ BIO_printf (int *,char*,char const*,...) ;
 int BN_BYTES ;
 int BN_bn2bin (int const*,unsigned char*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_num_bytes (int const*) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__* bn_get_words (int const*) ;

int ASN1_bn_print(BIO *bp, const char *number, const BIGNUM *num,
                  unsigned char *ign, int indent)
{
    int n, rv = 0;
    const char *neg;
    unsigned char *buf = ((void*)0), *tmp = ((void*)0);
    int buflen;

    if (num == ((void*)0))
        return 1;
    neg = BN_is_negative(num) ? "-" : "";
    if (!BIO_indent(bp, indent, ASN1_PRINT_MAX_INDENT))
        return 0;
    if (BN_is_zero(num)) {
        if (BIO_printf(bp, "%s 0\n", number) <= 0)
            return 0;
        return 1;
    }

    if (BN_num_bytes(num) <= BN_BYTES) {
        if (BIO_printf(bp, "%s %s%lu (%s0x%lx)\n", number, neg,
                       (unsigned long)bn_get_words(num)[0], neg,
                       (unsigned long)bn_get_words(num)[0]) <= 0)
            return 0;
        return 1;
    }

    buflen = BN_num_bytes(num) + 1;
    buf = tmp = OPENSSL_malloc(buflen);
    if (buf == ((void*)0))
        goto err;
    buf[0] = 0;
    if (BIO_printf(bp, "%s%s\n", number,
                   (neg[0] == '-') ? " (Negative)" : "") <= 0)
        goto err;
    n = BN_bn2bin(num, buf + 1);

    if (buf[1] & 0x80)
        n++;
    else
        tmp++;

    if (ASN1_buf_print(bp, tmp, n, indent + 4) == 0)
        goto err;
    rv = 1;
    err:
    OPENSSL_clear_free(buf, buflen);
    return rv;
}
