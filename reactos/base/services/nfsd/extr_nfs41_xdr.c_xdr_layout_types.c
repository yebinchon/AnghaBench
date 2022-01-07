
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int32_t ;
typedef int bool_t ;
struct TYPE_4__ {scalar_t__ x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ XDR_DECODE ;
 int eprintf (char*,scalar_t__) ;
 int xdr_u_int32_t (TYPE_1__*,scalar_t__*) ;

__attribute__((used)) static bool_t xdr_layout_types(
    XDR *xdr,
    uint32_t *layout_type)
{
    u_int32_t i, count, type;

    if (xdr->x_op != XDR_DECODE) {
        eprintf("xdr_layout_types: xdr->x_op is not XDR_DECODE! "
            "x_op %d not supported.\n", xdr->x_op);
        return FALSE;
    }

    *layout_type = 0;

    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;

    for (i = 0; i < count; i++) {
        if (!xdr_u_int32_t(xdr, &type))
            return FALSE;

        *layout_type |= 1 << (type - 1);
    }
    return TRUE;
}
