
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int uint32_t ;
struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int csa_cb_program; int csa_back_chan_attrs; int csa_fore_chan_attrs; int csa_flags; int csa_sequence; int csa_clientid; int * csa_cb_secparams; } ;
typedef TYPE_2__ nfs41_create_session_args ;
typedef int nfs41_callback_secparms ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_CREATE_SESSION ;
 scalar_t__ encode_backchannel_sec_parms ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_array (int *,char**,int*,int,int,int ) ;
 int xdr_channel_attrs4 (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_create_session(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_create_session_args *args = (nfs41_create_session_args*)argop->arg;
    nfs41_callback_secparms *cb_secparams = args->csa_cb_secparams;
    uint32_t cb_count = 2;

    if (unexpected_op(argop->op, OP_CREATE_SESSION))
        return FALSE;


    if (!xdr_u_hyper(xdr, &args->csa_clientid))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &args->csa_sequence))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &args->csa_flags))
        return FALSE;


    if (!xdr_channel_attrs4(xdr, &args->csa_fore_chan_attrs))
        return FALSE;


    if (!xdr_channel_attrs4(xdr, &args->csa_back_chan_attrs))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &args->csa_cb_program))
        return FALSE;

    return xdr_array(xdr, (char **)&cb_secparams, &cb_count,
        3, sizeof(nfs41_callback_secparms), (xdrproc_t) encode_backchannel_sec_parms);
}
