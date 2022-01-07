
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * freeText; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef int ASN1_UTF8STRING ;


 int ossl_assert (int) ;
 int * sk_ASN1_UTF8STRING_new_null () ;
 int sk_ASN1_UTF8STRING_push (int *,int *) ;

int ossl_cmp_hdr_push0_freeText(OSSL_CMP_PKIHEADER *hdr, ASN1_UTF8STRING *text)
{
    if (!ossl_assert(hdr != ((void*)0) && text != ((void*)0)))
        return 0;

    if (hdr->freeText == ((void*)0)
            && (hdr->freeText = sk_ASN1_UTF8STRING_new_null()) == ((void*)0))
        return 0;

    return sk_ASN1_UTF8STRING_push(hdr->freeText, text);
}
