
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_modified_limit4(
    XDR *xdr,
    uint64_t *filesize)
{
    uint32_t blocks, bytes_per_block;

    if (!xdr_u_int32_t(xdr, &blocks))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &bytes_per_block))
        return FALSE;

    *filesize = blocks * bytes_per_block;
    return TRUE;
}
