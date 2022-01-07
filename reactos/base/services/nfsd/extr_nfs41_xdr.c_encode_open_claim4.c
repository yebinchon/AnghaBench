
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int filename; } ;
struct TYPE_16__ {TYPE_5__* delegate_stateid; } ;
struct TYPE_14__ {int name; TYPE_3__* delegate_stateid; } ;
struct TYPE_12__ {int delegate_type; } ;
struct TYPE_11__ {int filename; } ;
struct TYPE_18__ {TYPE_7__ deleg_prev; TYPE_6__ deleg_cur_fh; TYPE_4__ deleg_cur; TYPE_2__ prev; TYPE_1__ null; } ;
struct TYPE_19__ {int claim; TYPE_8__ u; } ;
typedef TYPE_9__ open_claim4 ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_15__ {int stateid; } ;
struct TYPE_13__ {int stateid; } ;
 int FALSE ;
 int TRUE ;
 int encode_claim_deleg_cur (int *,int *,int ) ;
 int encode_component (int *,int ) ;
 int eprintf (char*,int) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_open_claim4(
    XDR *xdr,
    open_claim4 *oc)
{
    if (!xdr_u_int32_t(xdr, &oc->claim))
        return FALSE;

    switch (oc->claim)
    {
    case 129:
        return encode_component(xdr, oc->u.null.filename);
    case 128:
        return xdr_u_int32_t(xdr, &oc->u.prev.delegate_type);
    case 130:
        return TRUE;
    case 134:
        return encode_claim_deleg_cur(xdr,
            &oc->u.deleg_cur.delegate_stateid->stateid,
            oc->u.deleg_cur.name);
    case 132:
        return xdr_stateid4(xdr,
            &oc->u.deleg_cur_fh.delegate_stateid->stateid);
    case 133:
        return encode_component(xdr, oc->u.deleg_prev.filename);
    case 131:
        return TRUE;
    default:
        eprintf("encode_open_claim4: unsupported claim %d.\n",
            oc->claim);
        return FALSE;
    }
}
