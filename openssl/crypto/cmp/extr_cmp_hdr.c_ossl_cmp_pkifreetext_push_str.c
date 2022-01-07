
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_PKIFREETEXT ;
typedef int ASN1_UTF8STRING ;


 int ASN1_STRING_set (int *,char const*,int) ;
 int ASN1_UTF8STRING_free (int *) ;
 int * ASN1_UTF8STRING_new () ;
 int ossl_assert (int) ;
 int sk_ASN1_UTF8STRING_push (int *,int *) ;

int ossl_cmp_pkifreetext_push_str(OSSL_CMP_PKIFREETEXT *ft, const char *text)
{
    ASN1_UTF8STRING *utf8string;

    if (!ossl_assert(ft != ((void*)0) && text != ((void*)0)))
        return 0;
    if ((utf8string = ASN1_UTF8STRING_new()) == ((void*)0))
        return 0;
    if (!ASN1_STRING_set(utf8string, text, -1))
        goto err;
    if (!sk_ASN1_UTF8STRING_push(ft, utf8string))
        goto err;
    return 1;

 err:
    ASN1_UTF8STRING_free(utf8string);
    return 0;
}
