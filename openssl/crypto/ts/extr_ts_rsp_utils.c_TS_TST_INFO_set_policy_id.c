
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policy_id; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OBJ_dup (int *) ;
 int TS_F_TS_TST_INFO_SET_POLICY_ID ;
 int TSerr (int ,int ) ;

int TS_TST_INFO_set_policy_id(TS_TST_INFO *a, ASN1_OBJECT *policy)
{
    ASN1_OBJECT *new_policy;

    if (a->policy_id == policy)
        return 1;
    new_policy = OBJ_dup(policy);
    if (new_policy == ((void*)0)) {
        TSerr(TS_F_TS_TST_INFO_SET_POLICY_ID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_OBJECT_free(a->policy_id);
    a->policy_id = new_policy;
    return 1;
}
