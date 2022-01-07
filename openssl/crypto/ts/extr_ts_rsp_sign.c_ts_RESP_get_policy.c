
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int policies; int * default_policy; TYPE_1__* request; } ;
struct TYPE_6__ {int * policy_id; } ;
typedef TYPE_2__ TS_RESP_CTX ;
typedef int ASN1_OBJECT ;


 int OBJ_cmp (int *,int *) ;
 int TS_F_TS_RESP_GET_POLICY ;
 int TS_INFO_UNACCEPTED_POLICY ;
 int TS_RESP_CTX_add_failure_info (TYPE_2__*,int ) ;
 int TS_RESP_CTX_set_status_info (TYPE_2__*,int ,char*) ;
 int TS_R_INVALID_NULL_POINTER ;
 int TS_R_UNACCEPTABLE_POLICY ;
 int TS_STATUS_REJECTION ;
 int TSerr (int ,int ) ;
 int sk_ASN1_OBJECT_num (int ) ;
 int * sk_ASN1_OBJECT_value (int ,int) ;

__attribute__((used)) static ASN1_OBJECT *ts_RESP_get_policy(TS_RESP_CTX *ctx)
{
    ASN1_OBJECT *requested = ctx->request->policy_id;
    ASN1_OBJECT *policy = ((void*)0);
    int i;

    if (ctx->default_policy == ((void*)0)) {
        TSerr(TS_F_TS_RESP_GET_POLICY, TS_R_INVALID_NULL_POINTER);
        return ((void*)0);
    }
    if (!requested || !OBJ_cmp(requested, ctx->default_policy))
        policy = ctx->default_policy;


    for (i = 0; !policy && i < sk_ASN1_OBJECT_num(ctx->policies); ++i) {
        ASN1_OBJECT *current = sk_ASN1_OBJECT_value(ctx->policies, i);
        if (!OBJ_cmp(requested, current))
            policy = current;
    }
    if (policy == ((void*)0)) {
        TSerr(TS_F_TS_RESP_GET_POLICY, TS_R_UNACCEPTABLE_POLICY);
        TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                    "Requested policy is not " "supported.");
        TS_RESP_CTX_add_failure_info(ctx, TS_INFO_UNACCEPTED_POLICY);
    }
    return policy;
}
