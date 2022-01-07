
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ csr_sequence; scalar_t__ csr_flags; int csr_back_chan_attrs; int csr_fore_chan_attrs; scalar_t__ csr_sessionid; } ;
typedef TYPE_2__ nfs41_create_session_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int NFS4_SESSIONID_SIZE ;
 int OP_CREATE_SESSION ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_channel_attrs4 (int *,int ) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_create_session(
    XDR *xdr,
    nfs_resop4 *resop)
{
    uint32_t opstatus;
    nfs41_create_session_res *res = (nfs41_create_session_res*)resop->res;

    if (unexpected_op(resop->op, OP_CREATE_SESSION))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &opstatus))
        return FALSE;

    if (opstatus != NFS4_OK)
        return TRUE;

    if (!xdr_opaque(xdr, (char *)res->csr_sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &res->csr_sequence))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &res->csr_flags))
        return FALSE;


    if (!xdr_channel_attrs4(xdr, res->csr_fore_chan_attrs))
        return FALSE;


    return xdr_channel_attrs4(xdr, res->csr_back_chan_attrs);
}
