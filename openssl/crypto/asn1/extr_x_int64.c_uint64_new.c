
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_UINT64_NEW ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ OPENSSL_zalloc (int) ;

__attribute__((used)) static int uint64_new(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    if ((*pval = (ASN1_VALUE *)OPENSSL_zalloc(sizeof(uint64_t))) == ((void*)0)) {
        ASN1err(ASN1_F_UINT64_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
