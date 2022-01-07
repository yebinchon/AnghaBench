
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int attrmask; int change; } ;
typedef TYPE_1__ nfs41_file_info ;
struct TYPE_6__ {int attr_vals_len; int attrmask; scalar_t__ attr_vals; } ;
typedef TYPE_2__ fattr4 ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int FATTR4_WORD0_CHANGE ;
 int FATTR4_WORD0_SIZE ;
 int NFS4_OPAQUE_LIMIT ;
 scalar_t__ TRUE ;
 int XDR_ENCODE ;
 scalar_t__ bitmap_isset (int *,int ,int ) ;
 int bitmap_set (int *,int ,int ) ;
 int xdr_getpos (int *) ;
 scalar_t__ xdr_u_hyper (int *,int *) ;
 int xdrmem_create (int *,char*,int ,int ) ;

__attribute__((used)) static bool_t info_to_fattr4(nfs41_file_info *info, fattr4 *fattr)
{
    XDR fattr_xdr;
    bool_t result = TRUE;


    xdrmem_create(&fattr_xdr, (char*)fattr->attr_vals,
        NFS4_OPAQUE_LIMIT, XDR_ENCODE);



    if (bitmap_isset(&info->attrmask, 0, FATTR4_WORD0_CHANGE)) {
        result = xdr_u_hyper(&fattr_xdr, &info->change);
        if (!result) { CBX_ERR("getattr.info.change"); goto out; }
        bitmap_set(&fattr->attrmask, 0, FATTR4_WORD0_CHANGE);
    }
    if (bitmap_isset(&info->attrmask, 0, FATTR4_WORD0_SIZE)) {
        result = xdr_u_hyper(&fattr_xdr, &info->size);
        if (!result) { CBX_ERR("getattr.info.size"); goto out; }
        bitmap_set(&fattr->attrmask, 0, FATTR4_WORD0_SIZE);
    }
    fattr->attr_vals_len = xdr_getpos(&fattr_xdr);
out:
    return result;
}
