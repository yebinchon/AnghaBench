
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * responses; } ;
struct TYPE_18__ {TYPE_2__ tbsResponseData; } ;
struct TYPE_13__ {int * unknown; int * good; TYPE_4__* revoked; } ;
struct TYPE_17__ {int type; TYPE_1__ value; } ;
struct TYPE_16__ {int * revocationReason; int revocationTime; } ;
struct TYPE_15__ {TYPE_5__* certStatus; int * certId; int nextUpdate; int thisUpdate; } ;
typedef TYPE_3__ OCSP_SINGLERESP ;
typedef TYPE_4__ OCSP_REVOKEDINFO ;
typedef TYPE_5__ OCSP_CERTSTATUS ;
typedef int OCSP_CERTID ;
typedef TYPE_6__ OCSP_BASICRESP ;
typedef int ASN1_TIME ;


 int * ASN1_ENUMERATED_new () ;
 int ASN1_ENUMERATED_set (int *,int) ;
 void* ASN1_NULL_new () ;
 int ASN1_TIME_to_generalizedtime (int *,int *) ;
 int * OCSP_CERTID_dup (int *) ;
 int OCSP_CERTID_free (int *) ;
 int OCSP_F_OCSP_BASIC_ADD1_STATUS ;
 TYPE_4__* OCSP_REVOKEDINFO_new () ;
 int OCSP_REVOKED_STATUS_NOSTATUS ;
 int OCSP_R_NO_REVOKED_TIME ;
 int OCSP_SINGLERESP_free (TYPE_3__*) ;
 TYPE_3__* OCSP_SINGLERESP_new () ;
 int OCSPerr (int ,int ) ;



 int * sk_OCSP_SINGLERESP_new_null () ;
 int sk_OCSP_SINGLERESP_push (int *,TYPE_3__*) ;

OCSP_SINGLERESP *OCSP_basic_add1_status(OCSP_BASICRESP *rsp,
                                        OCSP_CERTID *cid,
                                        int status, int reason,
                                        ASN1_TIME *revtime,
                                        ASN1_TIME *thisupd,
                                        ASN1_TIME *nextupd)
{
    OCSP_SINGLERESP *single = ((void*)0);
    OCSP_CERTSTATUS *cs;
    OCSP_REVOKEDINFO *ri;

    if (rsp->tbsResponseData.responses == ((void*)0)
        && (rsp->tbsResponseData.responses
                = sk_OCSP_SINGLERESP_new_null()) == ((void*)0))
        goto err;

    if ((single = OCSP_SINGLERESP_new()) == ((void*)0))
        goto err;

    if (!ASN1_TIME_to_generalizedtime(thisupd, &single->thisUpdate))
        goto err;
    if (nextupd &&
        !ASN1_TIME_to_generalizedtime(nextupd, &single->nextUpdate))
        goto err;

    OCSP_CERTID_free(single->certId);

    if ((single->certId = OCSP_CERTID_dup(cid)) == ((void*)0))
        goto err;

    cs = single->certStatus;
    switch (cs->type = status) {
    case 129:
        if (!revtime) {
            OCSPerr(OCSP_F_OCSP_BASIC_ADD1_STATUS, OCSP_R_NO_REVOKED_TIME);
            goto err;
        }
        if ((cs->value.revoked = ri = OCSP_REVOKEDINFO_new()) == ((void*)0))
            goto err;
        if (!ASN1_TIME_to_generalizedtime(revtime, &ri->revocationTime))
            goto err;
        if (reason != OCSP_REVOKED_STATUS_NOSTATUS) {
            if ((ri->revocationReason = ASN1_ENUMERATED_new()) == ((void*)0))
                goto err;
            if (!(ASN1_ENUMERATED_set(ri->revocationReason, reason)))
                goto err;
        }
        break;

    case 130:
        if ((cs->value.good = ASN1_NULL_new()) == ((void*)0))
            goto err;
        break;

    case 128:
        if ((cs->value.unknown = ASN1_NULL_new()) == ((void*)0))
            goto err;
        break;

    default:
        goto err;

    }
    if (!(sk_OCSP_SINGLERESP_push(rsp->tbsResponseData.responses, single)))
        goto err;
    return single;
 err:
    OCSP_SINGLERESP_free(single);
    return ((void*)0);
}
