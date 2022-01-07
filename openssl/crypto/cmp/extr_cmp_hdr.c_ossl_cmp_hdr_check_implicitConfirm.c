
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int infoType; } ;
struct TYPE_5__ {int generalInfo; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef TYPE_2__ OSSL_CMP_ITAV ;


 scalar_t__ NID_id_it_implicitConfirm ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int ossl_assert (int ) ;
 int sk_OSSL_CMP_ITAV_num (int ) ;
 TYPE_2__* sk_OSSL_CMP_ITAV_value (int ,int) ;

int ossl_cmp_hdr_check_implicitConfirm(const OSSL_CMP_PKIHEADER *hdr)
{
    int itavCount;
    int i;
    OSSL_CMP_ITAV *itav;

    if (!ossl_assert(hdr != ((void*)0)))
        return 0;

    itavCount = sk_OSSL_CMP_ITAV_num(hdr->generalInfo);
    for (i = 0; i < itavCount; i++) {
        itav = sk_OSSL_CMP_ITAV_value(hdr->generalInfo, i);
        if (itav != ((void*)0)
                && OBJ_obj2nid(itav->infoType) == NID_id_it_implicitConfirm)
            return 1;
    }

    return 0;
}
