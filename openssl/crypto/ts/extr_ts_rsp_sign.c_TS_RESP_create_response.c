
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * response; int * tst_info; int * request; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int TS_RESP ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_CREATE_RESPONSE ;
 int TS_INFO_BAD_DATA_FORMAT ;
 int TS_RESP_CTX_add_failure_info (TYPE_1__*,int ) ;
 int TS_RESP_CTX_set_status_info (TYPE_1__*,int ,char*) ;
 scalar_t__ TS_RESP_CTX_set_status_info_cond (TYPE_1__*,int ,char*) ;
 int TS_RESP_free (int *) ;
 int * TS_RESP_new () ;
 int TS_R_RESPONSE_SETUP_ERROR ;
 int TS_STATUS_GRANTED ;
 int TS_STATUS_REJECTION ;
 int TSerr (int ,int ) ;
 int * d2i_TS_REQ_bio (int *,int *) ;
 int ts_RESP_CTX_cleanup (TYPE_1__*) ;
 int ts_RESP_CTX_init (TYPE_1__*) ;
 int ts_RESP_check_request (TYPE_1__*) ;
 int * ts_RESP_create_tst_info (TYPE_1__*,int *) ;
 int * ts_RESP_get_policy (TYPE_1__*) ;
 int ts_RESP_process_extensions (TYPE_1__*) ;
 int ts_RESP_sign (TYPE_1__*) ;

TS_RESP *TS_RESP_create_response(TS_RESP_CTX *ctx, BIO *req_bio)
{
    ASN1_OBJECT *policy;
    TS_RESP *response;
    int result = 0;

    ts_RESP_CTX_init(ctx);

    if ((ctx->response = TS_RESP_new()) == ((void*)0)) {
        TSerr(TS_F_TS_RESP_CREATE_RESPONSE, ERR_R_MALLOC_FAILURE);
        goto end;
    }
    if ((ctx->request = d2i_TS_REQ_bio(req_bio, ((void*)0))) == ((void*)0)) {
        TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                    "Bad request format or system error.");
        TS_RESP_CTX_add_failure_info(ctx, TS_INFO_BAD_DATA_FORMAT);
        goto end;
    }
    if (!TS_RESP_CTX_set_status_info(ctx, TS_STATUS_GRANTED, ((void*)0)))
        goto end;
    if (!ts_RESP_check_request(ctx))
        goto end;
    if ((policy = ts_RESP_get_policy(ctx)) == ((void*)0))
        goto end;
    if ((ctx->tst_info = ts_RESP_create_tst_info(ctx, policy)) == ((void*)0))
        goto end;
    if (!ts_RESP_process_extensions(ctx))
        goto end;
    if (!ts_RESP_sign(ctx))
        goto end;
    result = 1;

 end:
    if (!result) {
        TSerr(TS_F_TS_RESP_CREATE_RESPONSE, TS_R_RESPONSE_SETUP_ERROR);
        if (ctx->response != ((void*)0)) {
            if (TS_RESP_CTX_set_status_info_cond(ctx,
                                                 TS_STATUS_REJECTION,
                                                 "Error during response "
                                                 "generation.") == 0) {
                TS_RESP_free(ctx->response);
                ctx->response = ((void*)0);
            }
        }
    }
    response = ctx->response;
    ctx->response = ((void*)0);
    ts_RESP_CTX_cleanup(ctx);
    return response;
}
