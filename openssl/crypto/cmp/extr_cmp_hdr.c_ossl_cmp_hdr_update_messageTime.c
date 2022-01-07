
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * messageTime; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;


 int * ASN1_GENERALIZEDTIME_new () ;
 int * ASN1_GENERALIZEDTIME_set (int *,int ) ;
 int ossl_assert (int ) ;
 int time (int *) ;

int ossl_cmp_hdr_update_messageTime(OSSL_CMP_PKIHEADER *hdr)
{
    if (!ossl_assert(hdr != ((void*)0)))
        return 0;
    if (hdr->messageTime == ((void*)0)
            && (hdr->messageTime = ASN1_GENERALIZEDTIME_new()) == ((void*)0))
        return 0;
    return ASN1_GENERALIZEDTIME_set(hdr->messageTime, time(((void*)0))) != ((void*)0);
}
