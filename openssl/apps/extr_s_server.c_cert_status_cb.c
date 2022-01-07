
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ verbose; int * respin; } ;
typedef TYPE_1__ tlsextstatusctx ;
typedef int SSL ;
typedef int OCSP_RESPONSE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_puts (int ,char*) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int OCSP_RESPONSE_free (int *) ;
 int OCSP_RESPONSE_print (int ,int *,int) ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_OK ;
 int SSL_set_tlsext_status_ocsp_resp (int *,unsigned char*,int) ;
 int bio_err ;
 int * bio_open_default (int *,char,int ) ;
 int * d2i_OCSP_RESPONSE_bio (int *,int *) ;
 int get_ocsp_resp_from_responder (int *,TYPE_1__*,int **) ;
 int i2d_OCSP_RESPONSE (int *,unsigned char**) ;

__attribute__((used)) static int cert_status_cb(SSL *s, void *arg)
{
    tlsextstatusctx *srctx = arg;
    OCSP_RESPONSE *resp = ((void*)0);
    unsigned char *rspder = ((void*)0);
    int rspderlen;
    int ret = SSL_TLSEXT_ERR_ALERT_FATAL;

    if (srctx->verbose)
        BIO_puts(bio_err, "cert_status: callback called\n");

    if (srctx->respin != ((void*)0)) {
        BIO *derbio = bio_open_default(srctx->respin, 'r', FORMAT_ASN1);
        if (derbio == ((void*)0)) {
            BIO_puts(bio_err, "cert_status: Cannot open OCSP response file\n");
            goto err;
        }
        resp = d2i_OCSP_RESPONSE_bio(derbio, ((void*)0));
        BIO_free(derbio);
        if (resp == ((void*)0)) {
            BIO_puts(bio_err, "cert_status: Error reading OCSP response\n");
            goto err;
        }
    } else {
        ret = get_ocsp_resp_from_responder(s, srctx, &resp);
        if (ret != SSL_TLSEXT_ERR_OK)
            goto err;
    }

    rspderlen = i2d_OCSP_RESPONSE(resp, &rspder);
    if (rspderlen <= 0)
        goto err;

    SSL_set_tlsext_status_ocsp_resp(s, rspder, rspderlen);
    if (srctx->verbose) {
        BIO_puts(bio_err, "cert_status: ocsp response sent:\n");
        OCSP_RESPONSE_print(bio_err, resp, 2);
    }

    ret = SSL_TLSEXT_ERR_OK;

 err:
    if (ret != SSL_TLSEXT_ERR_OK)
        ERR_print_errors(bio_err);

    OCSP_RESPONSE_free(resp);

    return ret;
}
