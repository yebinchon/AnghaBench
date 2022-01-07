
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__ count; int * items; } ;
typedef TYPE_1__ mdsthreshold4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ MAX_MDSTHRESHOLD_ITEMS ;
 int TRUE ;
 int xdr_threshold_item (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t xdr_mdsthreshold(
    XDR *xdr,
    mdsthreshold4 *mdsthreshold)
{
    uint32_t i;

    if (!xdr_u_int32_t(xdr, &mdsthreshold->count))
        return FALSE;

    if (mdsthreshold->count > MAX_MDSTHRESHOLD_ITEMS)
        return FALSE;

    for (i = 0; i < mdsthreshold->count; i++)
        if (!xdr_threshold_item(xdr, &mdsthreshold->items[i]))
            return FALSE;
    return TRUE;
}
