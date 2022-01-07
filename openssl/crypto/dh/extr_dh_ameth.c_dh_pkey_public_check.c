
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pub_key; } ;
struct TYPE_6__ {TYPE_3__* dh; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DH ;


 int DH_F_DH_PKEY_PUBLIC_CHECK ;
 int DH_R_MISSING_PUBKEY ;
 int DH_check_pub_key_ex (TYPE_3__*,int *) ;
 int DHerr (int ,int ) ;

__attribute__((used)) static int dh_pkey_public_check(const EVP_PKEY *pkey)
{
    DH *dh = pkey->pkey.dh;

    if (dh->pub_key == ((void*)0)) {
        DHerr(DH_F_DH_PKEY_PUBLIC_CHECK, DH_R_MISSING_PUBKEY);
        return 0;
    }

    return DH_check_pub_key_ex(dh, dh->pub_key);
}
