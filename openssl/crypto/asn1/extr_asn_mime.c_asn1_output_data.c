
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ (* asn1_cb ) (int ,int **,TYPE_2__ const*,TYPE_1__*) ;} ;
struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_9__ {int * ndef_bio; int * boundary; int * out; } ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_STREAM_ARG ;
typedef TYPE_2__ ASN1_ITEM ;
typedef TYPE_3__ ASN1_AUX ;


 int ASN1_F_ASN1_OUTPUT_DATA ;
 int ASN1_OP_DETACHED_POST ;
 int ASN1_OP_DETACHED_PRE ;
 int ASN1_R_STREAMING_NOT_SUPPORTED ;
 int ASN1err (int ,int ) ;
 int BIO_free (int *) ;
 int * BIO_pop (int *) ;
 int PKCS7_REUSE_DIGEST ;
 int SMIME_DETACHED ;
 int SMIME_crlf_copy (int *,int *,int) ;
 scalar_t__ stub1 (int ,int **,TYPE_2__ const*,TYPE_1__*) ;
 scalar_t__ stub2 (int ,int **,TYPE_2__ const*,TYPE_1__*) ;

__attribute__((used)) static int asn1_output_data(BIO *out, BIO *data, ASN1_VALUE *val, int flags,
                            const ASN1_ITEM *it)
{
    BIO *tmpbio;
    const ASN1_AUX *aux = it->funcs;
    ASN1_STREAM_ARG sarg;
    int rv = 1;





    if (!(flags & SMIME_DETACHED) || (flags & PKCS7_REUSE_DIGEST)) {
        SMIME_crlf_copy(data, out, flags);
        return 1;
    }

    if (!aux || !aux->asn1_cb) {
        ASN1err(ASN1_F_ASN1_OUTPUT_DATA, ASN1_R_STREAMING_NOT_SUPPORTED);
        return 0;
    }

    sarg.out = out;
    sarg.ndef_bio = ((void*)0);
    sarg.boundary = ((void*)0);



    if (aux->asn1_cb(ASN1_OP_DETACHED_PRE, &val, it, &sarg) <= 0)
        return 0;


    SMIME_crlf_copy(data, sarg.ndef_bio, flags);


    if (aux->asn1_cb(ASN1_OP_DETACHED_POST, &val, it, &sarg) <= 0)
        rv = 0;



    while (sarg.ndef_bio != out) {
        tmpbio = BIO_pop(sarg.ndef_bio);
        BIO_free(sarg.ndef_bio);
        sarg.ndef_bio = tmpbio;
    }

    return rv;

}
