
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int bool_t ;
struct TYPE_6__ {int count; int* arr; } ;
typedef TYPE_1__ bitmap4 ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ XDR_DECODE ;
 scalar_t__ XDR_ENCODE ;
 int eprintf (char*,int) ;
 int xdr_u_int32_t (TYPE_2__*,int*) ;

bool_t xdr_bitmap4(
    XDR *xdr,
    bitmap4 *bitmap)
{
    uint32_t i;

    if (xdr->x_op == XDR_ENCODE) {
        if (bitmap->count > 3) {
            eprintf("encode_bitmap4: count (%d) must be <= 3\n",
                bitmap->count);
            return FALSE;
        }
        if (!xdr_u_int32_t(xdr, &bitmap->count))
            return FALSE;

        for (i = 0; i < bitmap->count; i++)
            if (!xdr_u_int32_t(xdr, &bitmap->arr[i]))
                return FALSE;

    } else if (xdr->x_op == XDR_DECODE) {
        if (!xdr_u_int32_t(xdr, &bitmap->count))
            return FALSE;
        if (bitmap->count > 3) {
            eprintf("decode_bitmap4: count (%d) must be <= 3\n",
                bitmap->count);
            return FALSE;
        }

        for (i = 0; i < bitmap->count; i++)
            if (!xdr_u_int32_t(xdr, &bitmap->arr[i]))
                return FALSE;
    } else
        return FALSE;

    return TRUE;
}
