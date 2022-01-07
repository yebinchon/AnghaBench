
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * default_policy; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OBJ_dup (int const*) ;
 int TS_F_TS_RESP_CTX_SET_DEF_POLICY ;
 int TSerr (int ,int ) ;

int TS_RESP_CTX_set_def_policy(TS_RESP_CTX *ctx, const ASN1_OBJECT *def_policy)
{
    ASN1_OBJECT_free(ctx->default_policy);
    if ((ctx->default_policy = OBJ_dup(def_policy)) == ((void*)0))
        goto err;
    return 1;
 err:
    TSerr(TS_F_TS_RESP_CTX_SET_DEF_POLICY, ERR_R_MALLOC_FAILURE);
    return 0;
}
