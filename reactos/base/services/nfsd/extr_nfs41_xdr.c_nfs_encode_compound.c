
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {int (* encode ) (int *,TYPE_3__*) ;} ;
typedef TYPE_1__ op_table_entry ;
struct TYPE_6__ {unsigned char* tag; size_t minorversion; size_t argarray_count; TYPE_3__* argarray; int tag_len; } ;
typedef TYPE_2__ nfs41_compound_args ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_7__ {size_t op; } ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int TRUE ;
 TYPE_1__* op_table_find (size_t) ;
 int stub1 (int *,TYPE_3__*) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_int32_t (int *,size_t*) ;

bool_t nfs_encode_compound(
    XDR *xdr,
    caddr_t *pargs)
{
    unsigned char *tag;

    nfs41_compound_args *args = (nfs41_compound_args*)pargs;
    uint32_t i;
    const op_table_entry *entry;

    tag = args->tag;
    if (!xdr_bytes(xdr, (char **)&tag, &args->tag_len, NFS4_OPAQUE_LIMIT))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->minorversion))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->argarray_count))
        return FALSE;

    for (i = 0; i < args->argarray_count; i++)
    {
        entry = op_table_find(args->argarray[i].op);
        if (entry == ((void*)0) || entry->encode == ((void*)0))
            return FALSE;

        if (!xdr_u_int32_t(xdr, &args->argarray[i].op))
            return FALSE;
        if (!entry->encode(xdr, &args->argarray[i]))
            return FALSE;
    }
    return TRUE;
}
