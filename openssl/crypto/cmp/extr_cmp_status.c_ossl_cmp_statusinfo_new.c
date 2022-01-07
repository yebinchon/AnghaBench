
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * failInfo; int * statusString; int status; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;
typedef int ASN1_UTF8STRING ;


 int * ASN1_BIT_STRING_new () ;
 int ASN1_BIT_STRING_set_bit (int *,int,int) ;
 int ASN1_INTEGER_set (int ,int) ;
 int ASN1_STRING_set (int *,char const*,int) ;
 int ASN1_UTF8STRING_free (int *) ;
 int * ASN1_UTF8STRING_new () ;
 int OSSL_CMP_PKIFAILUREINFO_MAX ;
 int OSSL_CMP_PKISI_free (TYPE_1__*) ;
 TYPE_1__* OSSL_CMP_PKISI_new () ;
 int * sk_ASN1_UTF8STRING_new_null () ;
 int sk_ASN1_UTF8STRING_push (int *,int *) ;

OSSL_CMP_PKISI *ossl_cmp_statusinfo_new(int status, int fail_info,
                                        const char *text)
{
    OSSL_CMP_PKISI *si = OSSL_CMP_PKISI_new();
    ASN1_UTF8STRING *utf8_text = ((void*)0);
    int failure;

    if (si == ((void*)0))
        goto err;
    if (!ASN1_INTEGER_set(si->status, status))
        goto err;

    if (text != ((void*)0)) {
        if ((utf8_text = ASN1_UTF8STRING_new()) == ((void*)0)
                || !ASN1_STRING_set(utf8_text, text, -1))
            goto err;
        if ((si->statusString = sk_ASN1_UTF8STRING_new_null()) == ((void*)0))
            goto err;
        if (!sk_ASN1_UTF8STRING_push(si->statusString, utf8_text))
            goto err;

        utf8_text = ((void*)0);
    }

    for (failure = 0; failure <= OSSL_CMP_PKIFAILUREINFO_MAX; failure++) {
        if ((fail_info & (1 << failure)) != 0) {
            if (si->failInfo == ((void*)0)
                    && (si->failInfo = ASN1_BIT_STRING_new()) == ((void*)0))
                goto err;
            if (!ASN1_BIT_STRING_set_bit(si->failInfo, failure, 1))
                goto err;
        }
    }
    return si;

 err:
    OSSL_CMP_PKISI_free(si);
    ASN1_UTF8STRING_free(utf8_text);
    return ((void*)0);
}
