
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int group; } ;
typedef TYPE_1__ EC_KEY ;


 int BN_bn2binpad (int *,unsigned char*,size_t) ;
 int EC_F_EC_KEY_SIMPLE_PRIV2OCT ;
 int EC_GROUP_order_bits (int ) ;
 int EC_R_BUFFER_TOO_SMALL ;
 int ECerr (int ,int ) ;

size_t ec_key_simple_priv2oct(const EC_KEY *eckey,
                              unsigned char *buf, size_t len)
{
    size_t buf_len;

    buf_len = (EC_GROUP_order_bits(eckey->group) + 7) / 8;
    if (eckey->priv_key == ((void*)0))
        return 0;
    if (buf == ((void*)0))
        return buf_len;
    else if (len < buf_len)
        return 0;



    if (BN_bn2binpad(eckey->priv_key, buf, buf_len) == -1) {
        ECerr(EC_F_EC_KEY_SIMPLE_PRIV2OCT, EC_R_BUFFER_TOO_SMALL);
        return 0;
    }

    return buf_len;
}
