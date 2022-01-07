
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int * freeText; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef TYPE_2__ ASN1_UTF8STRING ;


 int ossl_assert (int) ;
 int ossl_cmp_pkifreetext_push_str (int *,char*) ;
 int * sk_ASN1_UTF8STRING_new_null () ;

int ossl_cmp_hdr_push1_freeText(OSSL_CMP_PKIHEADER *hdr, ASN1_UTF8STRING *text)
{
    if (!ossl_assert(hdr != ((void*)0) && text != ((void*)0)))
        return 0;

    if (hdr->freeText == ((void*)0)
            && (hdr->freeText = sk_ASN1_UTF8STRING_new_null()) == ((void*)0))
        return 0;

    return ossl_cmp_pkifreetext_push_str(hdr->freeText, (char *)text->data);
}
