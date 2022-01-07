
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int recipient; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;


 int ossl_assert (int ) ;
 int set1_general_name (int *,int const*) ;

int ossl_cmp_hdr_set1_recipient(OSSL_CMP_PKIHEADER *hdr, const X509_NAME *nm)
{
    if (!ossl_assert(hdr != ((void*)0)))
        return 0;
    return set1_general_name(&hdr->recipient, nm);
}
