
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pub_key; } ;
typedef TYPE_1__ MDH ;


 scalar_t__ MP_bytes (int ) ;
 int MP_setbin (int ,int *,int) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int
DHGetPublicKey(MDH *dh, uint8_t *pubkey, size_t nPubkeyLen)
{
    int len;
    if (!dh || !dh->pub_key)
        return 0;

    len = (int)MP_bytes(dh->pub_key);
    if (len <= 0 || len > (int) nPubkeyLen)
        return 0;

    memset(pubkey, 0, nPubkeyLen);
    MP_setbin(dh->pub_key, pubkey + (nPubkeyLen - len), len);
    return 1;
}
