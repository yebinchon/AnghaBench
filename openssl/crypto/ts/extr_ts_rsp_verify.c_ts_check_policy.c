
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policy_id; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int ASN1_OBJECT ;


 scalar_t__ OBJ_cmp (int const*,int const*) ;
 int TS_F_TS_CHECK_POLICY ;
 int TS_R_POLICY_MISMATCH ;
 int TSerr (int ,int ) ;

__attribute__((used)) static int ts_check_policy(const ASN1_OBJECT *req_oid,
                           const TS_TST_INFO *tst_info)
{
    const ASN1_OBJECT *resp_oid = tst_info->policy_id;

    if (OBJ_cmp(req_oid, resp_oid) != 0) {
        TSerr(TS_F_TS_CHECK_POLICY, TS_R_POLICY_MISMATCH);
        return 0;
    }

    return 1;
}
