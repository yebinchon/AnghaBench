
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hmac; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef int RAND_DRBG_HMAC ;
typedef TYPE_2__ RAND_DRBG ;


 int do_hmac (int *,int,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t) ;

__attribute__((used)) static int drbg_hmac_update(RAND_DRBG *drbg,
                            const unsigned char *in1, size_t in1len,
                            const unsigned char *in2, size_t in2len,
                            const unsigned char *in3, size_t in3len)
{
    RAND_DRBG_HMAC *hmac = &drbg->data.hmac;


    if (!do_hmac(hmac, 0x00, in1, in1len, in2, in2len, in3, in3len))
        return 0;

    if (in1len == 0 && in2len == 0 && in3len == 0)
        return 1;

    return do_hmac(hmac, 0x01, in1, in1len, in2, in2len, in3, in3len);
}
