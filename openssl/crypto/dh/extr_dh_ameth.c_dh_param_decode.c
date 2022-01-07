
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int dirty_cnt; } ;
struct TYPE_10__ {TYPE_1__* ameth; } ;
struct TYPE_9__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DH ;


 int DH_F_DH_PARAM_DECODE ;
 int DHerr (int ,int ) ;
 int ERR_R_DH_LIB ;
 int EVP_PKEY_assign (TYPE_2__*,int ,TYPE_3__*) ;
 TYPE_3__* d2i_dhp (TYPE_2__*,unsigned char const**,int) ;

__attribute__((used)) static int dh_param_decode(EVP_PKEY *pkey,
                           const unsigned char **pder, int derlen)
{
    DH *dh;

    if ((dh = d2i_dhp(pkey, pder, derlen)) == ((void*)0)) {
        DHerr(DH_F_DH_PARAM_DECODE, ERR_R_DH_LIB);
        return 0;
    }
    dh->dirty_cnt++;
    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, dh);
    return 1;
}
