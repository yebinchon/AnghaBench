
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {int pvno; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;


 int ASN1_INTEGER_get_int64 (scalar_t__*,int ) ;
 scalar_t__ INT_MAX ;
 int ossl_assert (int ) ;

int ossl_cmp_hdr_get_pvno(const OSSL_CMP_PKIHEADER *hdr)
{
    int64_t pvno;

    if (!ossl_assert(hdr != ((void*)0)))
        return -1;
    if (!ASN1_INTEGER_get_int64(&pvno, hdr->pvno) || pvno < 0 || pvno > INT_MAX)
        return -1;
    return (int)pvno;
}
