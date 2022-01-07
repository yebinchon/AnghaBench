
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int generalInfo; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef int OSSL_CMP_ITAV ;


 int OSSL_CMP_ITAV_push0_stack_item (int *,int *) ;
 int ossl_assert (int) ;

int ossl_cmp_hdr_generalInfo_push0_item(OSSL_CMP_PKIHEADER *hdr,
                                        OSSL_CMP_ITAV *itav)
{
    if (!ossl_assert(hdr != ((void*)0) && itav != ((void*)0)))
        return 0;
    return OSSL_CMP_ITAV_push0_stack_item(&hdr->generalInfo, itav);
}
