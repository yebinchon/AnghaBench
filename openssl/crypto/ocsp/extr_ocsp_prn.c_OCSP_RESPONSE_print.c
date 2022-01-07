
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_18__ {TYPE_4__* revoked; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_24__ {int responseType; } ;
struct TYPE_17__ {int byKey; int byName; } ;
struct TYPE_22__ {int type; TYPE_1__ value; } ;
struct TYPE_23__ {int responseExtensions; int responses; scalar_t__ producedAt; TYPE_6__ responderId; int version; } ;
struct TYPE_21__ {scalar_t__ responseStatus; TYPE_8__* responseBytes; } ;
struct TYPE_20__ {scalar_t__ revocationReason; scalar_t__ revocationTime; } ;
struct TYPE_19__ {int singleExtensions; scalar_t__ nextUpdate; scalar_t__ thisUpdate; TYPE_9__* certStatus; int * certId; } ;
struct TYPE_16__ {int certs; int signature; int signatureAlgorithm; TYPE_7__ tbsResponseData; } ;
typedef TYPE_3__ OCSP_SINGLERESP ;
typedef TYPE_4__ OCSP_REVOKEDINFO ;
typedef TYPE_5__ OCSP_RESPONSE ;
typedef TYPE_6__ OCSP_RESPID ;
typedef TYPE_7__ OCSP_RESPDATA ;
typedef TYPE_8__ OCSP_RESPBYTES ;
typedef TYPE_9__ OCSP_CERTSTATUS ;
typedef int OCSP_CERTID ;
typedef TYPE_10__ OCSP_BASICRESP ;
typedef int BIO ;


 long ASN1_ENUMERATED_get (scalar_t__) ;
 int ASN1_GENERALIZEDTIME_print (int *,scalar_t__) ;
 long ASN1_INTEGER_get (int ) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 scalar_t__ BIO_puts (int *,char*) ;
 scalar_t__ BIO_write (int *,char*,int) ;
 scalar_t__ NID_id_pkix_OCSP_basic ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int OCSP_BASICRESP_free (TYPE_10__*) ;
 int OCSP_cert_status_str (scalar_t__) ;
 int OCSP_crl_reason_str (long) ;
 TYPE_10__* OCSP_response_get1_basic (TYPE_5__*) ;
 int OCSP_response_status_str (long) ;
 int PEM_write_bio_X509 (int *,int ) ;
 scalar_t__ V_OCSP_CERTSTATUS_REVOKED ;


 int X509V3_extensions_print (int *,char*,int ,unsigned long,int) ;
 int X509_NAME_print_ex (int *,int ,int ,int ) ;
 int X509_print (int *,int ) ;
 scalar_t__ X509_signature_print (int *,int *,int ) ;
 int XN_FLAG_ONELINE ;
 scalar_t__ i2a_ASN1_OBJECT (int *,int ) ;
 int i2a_ASN1_STRING (int *,int ,int ) ;
 scalar_t__ ocsp_certid_print (int *,int *,int) ;
 int sk_OCSP_SINGLERESP_num (int ) ;
 TYPE_3__* sk_OCSP_SINGLERESP_value (int ,int) ;
 int sk_X509_num (int ) ;
 int sk_X509_value (int ,int) ;

int OCSP_RESPONSE_print(BIO *bp, OCSP_RESPONSE *o, unsigned long flags)
{
    int i, ret = 0;
    long l;
    OCSP_CERTID *cid = ((void*)0);
    OCSP_BASICRESP *br = ((void*)0);
    OCSP_RESPID *rid = ((void*)0);
    OCSP_RESPDATA *rd = ((void*)0);
    OCSP_CERTSTATUS *cst = ((void*)0);
    OCSP_REVOKEDINFO *rev = ((void*)0);
    OCSP_SINGLERESP *single = ((void*)0);
    OCSP_RESPBYTES *rb = o->responseBytes;

    if (BIO_puts(bp, "OCSP Response Data:\n") <= 0)
        goto err;
    l = ASN1_ENUMERATED_get(o->responseStatus);
    if (BIO_printf(bp, "    OCSP Response Status: %s (0x%lx)\n",
                   OCSP_response_status_str(l), l) <= 0)
        goto err;
    if (rb == ((void*)0))
        return 1;
    if (BIO_puts(bp, "    Response Type: ") <= 0)
        goto err;
    if (i2a_ASN1_OBJECT(bp, rb->responseType) <= 0)
        goto err;
    if (OBJ_obj2nid(rb->responseType) != NID_id_pkix_OCSP_basic) {
        BIO_puts(bp, " (unknown response type)\n");
        return 1;
    }

    if ((br = OCSP_response_get1_basic(o)) == ((void*)0))
        goto err;
    rd = &br->tbsResponseData;
    l = ASN1_INTEGER_get(rd->version);
    if (BIO_printf(bp, "\n    Version: %lu (0x%lx)\n", l + 1, l) <= 0)
        goto err;
    if (BIO_puts(bp, "    Responder Id: ") <= 0)
        goto err;

    rid = &rd->responderId;
    switch (rid->type) {
    case 128:
        X509_NAME_print_ex(bp, rid->value.byName, 0, XN_FLAG_ONELINE);
        break;
    case 129:
        i2a_ASN1_STRING(bp, rid->value.byKey, 0);
        break;
    }

    if (BIO_printf(bp, "\n    Produced At: ") <= 0)
        goto err;
    if (!ASN1_GENERALIZEDTIME_print(bp, rd->producedAt))
        goto err;
    if (BIO_printf(bp, "\n    Responses:\n") <= 0)
        goto err;
    for (i = 0; i < sk_OCSP_SINGLERESP_num(rd->responses); i++) {
        if (!sk_OCSP_SINGLERESP_value(rd->responses, i))
            continue;
        single = sk_OCSP_SINGLERESP_value(rd->responses, i);
        cid = single->certId;
        if (ocsp_certid_print(bp, cid, 4) <= 0)
            goto err;
        cst = single->certStatus;
        if (BIO_printf(bp, "    Cert Status: %s",
                       OCSP_cert_status_str(cst->type)) <= 0)
            goto err;
        if (cst->type == V_OCSP_CERTSTATUS_REVOKED) {
            rev = cst->value.revoked;
            if (BIO_printf(bp, "\n    Revocation Time: ") <= 0)
                goto err;
            if (!ASN1_GENERALIZEDTIME_print(bp, rev->revocationTime))
                goto err;
            if (rev->revocationReason) {
                l = ASN1_ENUMERATED_get(rev->revocationReason);
                if (BIO_printf(bp,
                               "\n    Revocation Reason: %s (0x%lx)",
                               OCSP_crl_reason_str(l), l) <= 0)
                    goto err;
            }
        }
        if (BIO_printf(bp, "\n    This Update: ") <= 0)
            goto err;
        if (!ASN1_GENERALIZEDTIME_print(bp, single->thisUpdate))
            goto err;
        if (single->nextUpdate) {
            if (BIO_printf(bp, "\n    Next Update: ") <= 0)
                goto err;
            if (!ASN1_GENERALIZEDTIME_print(bp, single->nextUpdate))
                goto err;
        }
        if (BIO_write(bp, "\n", 1) <= 0)
            goto err;
        if (!X509V3_extensions_print(bp,
                                     "Response Single Extensions",
                                     single->singleExtensions, flags, 8))
            goto err;
        if (BIO_write(bp, "\n", 1) <= 0)
            goto err;
    }
    if (!X509V3_extensions_print(bp, "Response Extensions",
                                 rd->responseExtensions, flags, 4))
        goto err;
    if (X509_signature_print(bp, &br->signatureAlgorithm, br->signature) <= 0)
        goto err;

    for (i = 0; i < sk_X509_num(br->certs); i++) {
        X509_print(bp, sk_X509_value(br->certs, i));
        PEM_write_bio_X509(bp, sk_X509_value(br->certs, i));
    }

    ret = 1;
 err:
    OCSP_BASICRESP_free(br);
    return ret;
}
