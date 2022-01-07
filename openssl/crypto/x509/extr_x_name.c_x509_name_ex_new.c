
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int modified; int * entries; int * bytes; } ;
typedef TYPE_1__ X509_NAME ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_X509_NAME_EX_NEW ;
 int ASN1err (int ,int ) ;
 int * BUF_MEM_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int sk_X509_NAME_ENTRY_free (int *) ;
 int * sk_X509_NAME_ENTRY_new_null () ;

__attribute__((used)) static int x509_name_ex_new(ASN1_VALUE **val, const ASN1_ITEM *it)
{
    X509_NAME *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0))
        goto memerr;
    if ((ret->entries = sk_X509_NAME_ENTRY_new_null()) == ((void*)0))
        goto memerr;
    if ((ret->bytes = BUF_MEM_new()) == ((void*)0))
        goto memerr;
    ret->modified = 1;
    *val = (ASN1_VALUE *)ret;
    return 1;

 memerr:
    ASN1err(ASN1_F_X509_NAME_EX_NEW, ERR_R_MALLOC_FAILURE);
    if (ret) {
        sk_X509_NAME_ENTRY_free(ret->entries);
        OPENSSL_free(ret);
    }
    return 0;
}
