
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int p; } ;
typedef int * MP_t ;
typedef TYPE_1__ MDH ;


 size_t INT_MAX ;
 int MDH_compute_key (int *,size_t,int *,TYPE_1__*) ;
 int MP_free (int *) ;
 int MP_getbin (int *,int *,size_t) ;
 int MP_gethex (int *,int ,size_t) ;
 int Q1024 ;
 int assert (size_t) ;
 scalar_t__ isValidPublicKey (int *,int ,int *) ;

__attribute__((used)) static int
DHComputeSharedSecretKey(MDH *dh, uint8_t *pubkey, size_t nPubkeyLen,
                         uint8_t *secret)
{
    MP_t q1 = ((void*)0), pubkeyBn = ((void*)0);
    size_t len;
    int res;

    if (!dh || !secret || nPubkeyLen >= INT_MAX)
        return -1;

    MP_getbin(pubkeyBn, pubkey, nPubkeyLen);
    if (!pubkeyBn)
        return -1;

    MP_gethex(q1, Q1024, len);
    assert(len);

    if (isValidPublicKey(pubkeyBn, dh->p, q1))
        res = MDH_compute_key(secret, nPubkeyLen, pubkeyBn, dh);
    else
        res = -1;

    MP_free(q1);
    MP_free(pubkeyBn);

    return res;
}
