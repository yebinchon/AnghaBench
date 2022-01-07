
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_OUTPUT_SIZE ;
 scalar_t__ BN_is_negative (int const*) ;
 int BN_is_zero (int const*) ;
 int hex_convert_memory (unsigned char const*,size_t,char*,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int convert_bn_memory(const unsigned char *in, size_t bytes,
                             char *out, int *lz, const BIGNUM *bn)
{
    int n = bytes * 2, i;
    char *p = out, *q = ((void*)0);
    const char *r;

    if (bn != ((void*)0) && !BN_is_zero(bn)) {
        hex_convert_memory(in, bytes, out, BN_OUTPUT_SIZE);
        if (*lz) {
            for (; *p == '0' || *p == ' '; p++)
                if (*p == '0') {
                    q = p;
                    *p = ' ';
                    n--;
                }
            if (*p == '\0') {




                if ((in[bytes] & 0xf0) != 0 && BN_is_negative(bn)) {
                    *lz = 0;
                    *q = '-';
                    n++;
                }
            } else {
                *lz = 0;
                if (BN_is_negative(bn)) {




                    *q = '-';
                    n++;
                }
            }
        }
       return n;
    }

    for (i = 0; i < n; i++) {
        *p++ = ' ';
        if (i % (2 * BN_OUTPUT_SIZE) == 2 * BN_OUTPUT_SIZE - 1 && i != n - 1)
            *p++ = ' ';
    }
    *p = '\0';
    if (bn == ((void*)0))
        r = "NULL";
    else
        r = BN_is_negative(bn) ? "-0" : "0";
    strcpy(p - strlen(r), r);
    return 0;
}
