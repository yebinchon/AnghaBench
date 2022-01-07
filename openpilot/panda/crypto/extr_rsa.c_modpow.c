
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int len; int exponent; int* rr; } ;
typedef TYPE_1__ RSAPublicKey ;


 int RSANUMWORDS ;
 scalar_t__ geM (TYPE_1__ const*,int*) ;
 int montMul (TYPE_1__ const*,int*,int*,int*) ;
 int subM (TYPE_1__ const*,int*) ;

__attribute__((used)) static void modpow(const RSAPublicKey* key,
                   uint8_t* inout) {
    uint32_t a[RSANUMWORDS];
    uint32_t aR[RSANUMWORDS];
    uint32_t aaR[RSANUMWORDS];
    uint32_t* aaa = 0;
    int i;


    for (i = 0; i < key->len; ++i) {
        uint32_t tmp =
            (inout[((key->len - 1 - i) * 4) + 0] << 24) |
            (inout[((key->len - 1 - i) * 4) + 1] << 16) |
            (inout[((key->len - 1 - i) * 4) + 2] << 8) |
            (inout[((key->len - 1 - i) * 4) + 3] << 0);
        a[i] = tmp;
    }

    if (key->exponent == 65537) {
        aaa = aaR;
        montMul(key, aR, a, key->rr);
        for (i = 0; i < 16; i += 2) {
            montMul(key, aaR, aR, aR);
            montMul(key, aR, aaR, aaR);
        }
        montMul(key, aaa, aR, a);
    } else if (key->exponent == 3) {
        aaa = aR;
        montMul(key, aR, a, key->rr);
        montMul(key, aaR, aR, aR);
        montMul(key, aaa, aaR, a);
    }


    if (geM(key, aaa)) {
        subM(key, aaa);
    }


    for (i = key->len - 1; i >= 0; --i) {
        uint32_t tmp = aaa[i];
        *inout++ = tmp >> 24;
        *inout++ = tmp >> 16;
        *inout++ = tmp >> 8;
        *inout++ = tmp >> 0;
    }
}
