
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; int data_len; int eof; } ;
typedef TYPE_1__ nfs41_read_res_ok ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS41_MAX_FILEIO_SIZE ;
 int xdr_bool (int *,int *) ;
 int xdr_bytes (int *,char**,int *,int ) ;

__attribute__((used)) static bool_t decode_read_res_ok(
    XDR *xdr,
    nfs41_read_res_ok *res)
{
    unsigned char *data = res->data;

    if (!xdr_bool(xdr, &res->eof))
        return FALSE;

    return xdr_bytes(xdr, (char **)&data, &res->data_len, NFS41_MAX_FILEIO_SIZE);
}
