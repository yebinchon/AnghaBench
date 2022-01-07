
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int dirn; } ;
struct TYPE_15__ {TYPE_2__ d; int type; } ;
struct TYPE_14__ {int flags; int signer_cert; TYPE_1__* request; int micros; int millis; int seconds; int clock_precision_digits; int time_cb_data; int (* time_cb ) (TYPE_3__*,int ,long*,long*) ;int serial_cb_data; int * (* serial_cb ) (TYPE_3__*,int ) ;} ;
struct TYPE_12__ {int * nonce; int msg_imprint; } ;
typedef int TS_TST_INFO ;
typedef TYPE_3__ TS_RESP_CTX ;
typedef int TS_ACCURACY ;
typedef TYPE_4__ GENERAL_NAME ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_free (int *) ;
 int ASN1_INTEGER_free (int *) ;
 int GENERAL_NAME_free (TYPE_4__*) ;
 TYPE_4__* GENERAL_NAME_new () ;
 int GEN_DIRNAME ;
 int TS_ACCURACY_free (int *) ;
 int * TS_ACCURACY_new () ;
 int TS_ACCURACY_set_micros (int *,int ) ;
 int TS_ACCURACY_set_millis (int *,int ) ;
 int TS_ACCURACY_set_seconds (int *,int ) ;
 int TS_F_TS_RESP_CREATE_TST_INFO ;
 int TS_ORDERING ;
 int TS_RESP_CTX_set_status_info_cond (TYPE_3__*,int ,char*) ;
 int * TS_RESP_set_genTime_with_precision (int *,long,long,int ) ;
 int TS_R_TST_INFO_SETUP_ERROR ;
 int TS_STATUS_REJECTION ;
 int TS_TSA_NAME ;
 int TS_TST_INFO_free (int *) ;
 int * TS_TST_INFO_new () ;
 int TS_TST_INFO_set_accuracy (int *,int *) ;
 int TS_TST_INFO_set_msg_imprint (int *,int ) ;
 int TS_TST_INFO_set_nonce (int *,int const*) ;
 int TS_TST_INFO_set_ordering (int *,int) ;
 int TS_TST_INFO_set_policy_id (int *,int *) ;
 int TS_TST_INFO_set_serial (int *,int *) ;
 int TS_TST_INFO_set_time (int *,int *) ;
 int TS_TST_INFO_set_tsa (int *,TYPE_4__*) ;
 int TS_TST_INFO_set_version (int *,int) ;
 int TSerr (int ,int ) ;
 int X509_NAME_dup (int ) ;
 int X509_get_subject_name (int ) ;
 int * stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int ,long*,long*) ;

__attribute__((used)) static TS_TST_INFO *ts_RESP_create_tst_info(TS_RESP_CTX *ctx,
                                            ASN1_OBJECT *policy)
{
    int result = 0;
    TS_TST_INFO *tst_info = ((void*)0);
    ASN1_INTEGER *serial = ((void*)0);
    ASN1_GENERALIZEDTIME *asn1_time = ((void*)0);
    long sec, usec;
    TS_ACCURACY *accuracy = ((void*)0);
    const ASN1_INTEGER *nonce;
    GENERAL_NAME *tsa_name = ((void*)0);

    if ((tst_info = TS_TST_INFO_new()) == ((void*)0))
        goto end;
    if (!TS_TST_INFO_set_version(tst_info, 1))
        goto end;
    if (!TS_TST_INFO_set_policy_id(tst_info, policy))
        goto end;
    if (!TS_TST_INFO_set_msg_imprint(tst_info, ctx->request->msg_imprint))
        goto end;
    if ((serial = ctx->serial_cb(ctx, ctx->serial_cb_data)) == ((void*)0)
        || !TS_TST_INFO_set_serial(tst_info, serial))
        goto end;
    if (!ctx->time_cb(ctx, ctx->time_cb_data, &sec, &usec)
        || (asn1_time =
            TS_RESP_set_genTime_with_precision(((void*)0), sec, usec,
                                        ctx->clock_precision_digits)) == ((void*)0)
        || !TS_TST_INFO_set_time(tst_info, asn1_time))
        goto end;

    if ((ctx->seconds || ctx->millis || ctx->micros)
        && (accuracy = TS_ACCURACY_new()) == ((void*)0))
        goto end;
    if (ctx->seconds && !TS_ACCURACY_set_seconds(accuracy, ctx->seconds))
        goto end;
    if (ctx->millis && !TS_ACCURACY_set_millis(accuracy, ctx->millis))
        goto end;
    if (ctx->micros && !TS_ACCURACY_set_micros(accuracy, ctx->micros))
        goto end;
    if (accuracy && !TS_TST_INFO_set_accuracy(tst_info, accuracy))
        goto end;

    if ((ctx->flags & TS_ORDERING)
        && !TS_TST_INFO_set_ordering(tst_info, 1))
        goto end;

    if ((nonce = ctx->request->nonce) != ((void*)0)
        && !TS_TST_INFO_set_nonce(tst_info, nonce))
        goto end;

    if (ctx->flags & TS_TSA_NAME) {
        if ((tsa_name = GENERAL_NAME_new()) == ((void*)0))
            goto end;
        tsa_name->type = GEN_DIRNAME;
        tsa_name->d.dirn =
            X509_NAME_dup(X509_get_subject_name(ctx->signer_cert));
        if (!tsa_name->d.dirn)
            goto end;
        if (!TS_TST_INFO_set_tsa(tst_info, tsa_name))
            goto end;
    }

    result = 1;
 end:
    if (!result) {
        TS_TST_INFO_free(tst_info);
        tst_info = ((void*)0);
        TSerr(TS_F_TS_RESP_CREATE_TST_INFO, TS_R_TST_INFO_SETUP_ERROR);
        TS_RESP_CTX_set_status_info_cond(ctx, TS_STATUS_REJECTION,
                                         "Error during TSTInfo "
                                         "generation.");
    }
    GENERAL_NAME_free(tsa_name);
    TS_ACCURACY_free(accuracy);
    ASN1_GENERALIZEDTIME_free(asn1_time);
    ASN1_INTEGER_free(serial);

    return tst_info;
}
