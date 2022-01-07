
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int count; int* arr; } ;
typedef TYPE_1__ pnfs_stripe_indices ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int ZeroMemory (int*,int) ;
 int* realloc (int*,int) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t xdr_stripe_indices(
    XDR *xdr,
    pnfs_stripe_indices *indices)
{
    uint32_t i, count;

    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;

    if (count && count != indices->count) {
        uint32_t *tmp;
        tmp = realloc(indices->arr, count * sizeof(uint32_t));
        if (tmp == ((void*)0))
            return FALSE;
        indices->arr = tmp;
        ZeroMemory(indices->arr, count * sizeof(uint32_t));
        indices->count = count;
    }

    for (i = 0; i < indices->count; i++) {
        if (!xdr_u_int32_t(xdr, &indices->arr[i]))
            return FALSE;
    }
    return TRUE;
}
