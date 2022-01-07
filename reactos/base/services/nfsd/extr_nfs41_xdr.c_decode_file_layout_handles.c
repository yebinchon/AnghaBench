
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int count; TYPE_2__* arr; } ;
typedef TYPE_1__ pnfs_file_layout_handles ;
struct TYPE_8__ {int fh; } ;
typedef TYPE_2__ nfs41_path_fh ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int xdr_fh (int *,int *) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_file_layout_handles(
    XDR *xdr,
    pnfs_file_layout_handles *handles)
{
    uint32_t i, count;

    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;

    if (count && count != handles->count) {
        nfs41_path_fh *tmp;
        tmp = realloc(handles->arr, count * sizeof(nfs41_path_fh));
        if (tmp == ((void*)0))
            return FALSE;
        handles->arr = tmp;
        ZeroMemory(handles->arr, count * sizeof(nfs41_path_fh));
        handles->count = count;
    }

    for (i = 0; i < handles->count; i++) {
        if (!xdr_fh(xdr, &handles->arr[i].fh))
            return FALSE;
    }
    return TRUE;
}
