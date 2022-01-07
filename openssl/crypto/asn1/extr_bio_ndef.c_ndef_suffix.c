
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_9__ {scalar_t__ (* asn1_cb ) (int ,int *,TYPE_4__*,TYPE_2__*) ;} ;
struct TYPE_8__ {unsigned char** boundary; int out; int ndef_bio; } ;
struct TYPE_7__ {unsigned char** boundary; unsigned char* derbuf; TYPE_4__* it; int val; int out; int ndef_bio; } ;
typedef TYPE_1__ NDEF_SUPPORT ;
typedef int BIO ;
typedef TYPE_2__ ASN1_STREAM_ARG ;
typedef TYPE_3__ ASN1_AUX ;


 int ASN1_F_NDEF_SUFFIX ;
 int ASN1_OP_STREAM_POST ;
 int ASN1_item_ndef_i2d (int ,unsigned char**,TYPE_4__*) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__ stub1 (int ,int *,TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static int ndef_suffix(BIO *b, unsigned char **pbuf, int *plen, void *parg)
{
    NDEF_SUPPORT *ndef_aux;
    unsigned char *p;
    int derlen;
    const ASN1_AUX *aux;
    ASN1_STREAM_ARG sarg;

    if (parg == ((void*)0))
        return 0;

    ndef_aux = *(NDEF_SUPPORT **)parg;

    aux = ndef_aux->it->funcs;


    sarg.ndef_bio = ndef_aux->ndef_bio;
    sarg.out = ndef_aux->out;
    sarg.boundary = ndef_aux->boundary;
    if (aux->asn1_cb(ASN1_OP_STREAM_POST,
                     &ndef_aux->val, ndef_aux->it, &sarg) <= 0)
        return 0;

    derlen = ASN1_item_ndef_i2d(ndef_aux->val, ((void*)0), ndef_aux->it);
    if (derlen < 0)
        return 0;
    if ((p = OPENSSL_malloc(derlen)) == ((void*)0)) {
        ASN1err(ASN1_F_NDEF_SUFFIX, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ndef_aux->derbuf = p;
    *pbuf = p;
    derlen = ASN1_item_ndef_i2d(ndef_aux->val, &p, ndef_aux->it);

    if (*ndef_aux->boundary == ((void*)0))
        return 0;
    *pbuf = *ndef_aux->boundary;
    *plen = derlen - (*ndef_aux->boundary - ndef_aux->derbuf);

    return 1;
}
