
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;


 int decode_modified_limit4 (int *,int *) ;
 int eprintf (char*,int) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_space_limit4(
    XDR *xdr,
    uint64_t *filesize)
{
    uint32_t limitby;

    if (!xdr_u_int32_t(xdr, &limitby))
        return FALSE;

    switch (limitby)
    {
    case 128:
        return xdr_u_hyper(xdr, filesize);
    case 129:
        return decode_modified_limit4(xdr, filesize);
    default:
        eprintf("decode_space_limit4: limitby %d invalid\n", limitby);
        return FALSE;
    }
}
