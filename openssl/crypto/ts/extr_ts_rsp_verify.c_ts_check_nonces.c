
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * nonce; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int ASN1_INTEGER ;


 scalar_t__ ASN1_INTEGER_cmp (int const*,int const*) ;
 int TS_F_TS_CHECK_NONCES ;
 int TS_R_NONCE_MISMATCH ;
 int TS_R_NONCE_NOT_RETURNED ;
 int TSerr (int ,int ) ;

__attribute__((used)) static int ts_check_nonces(const ASN1_INTEGER *a, TS_TST_INFO *tst_info)
{
    const ASN1_INTEGER *b = tst_info->nonce;

    if (!b) {
        TSerr(TS_F_TS_CHECK_NONCES, TS_R_NONCE_NOT_RETURNED);
        return 0;
    }


    if (ASN1_INTEGER_cmp(a, b) != 0) {
        TSerr(TS_F_TS_CHECK_NONCES, TS_R_NONCE_MISMATCH);
        return 0;
    }

    return 1;
}
