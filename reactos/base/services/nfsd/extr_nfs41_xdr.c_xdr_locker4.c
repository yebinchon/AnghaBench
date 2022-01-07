
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int lock_seqid; TYPE_3__* lock_stateid; } ;
struct TYPE_15__ {int lock_owner; int lock_seqid; TYPE_1__* open_stateid; int open_seqid; } ;
struct TYPE_18__ {TYPE_4__ lock_owner; TYPE_2__ open_owner; } ;
struct TYPE_19__ {TYPE_5__ u; scalar_t__ new_lock_owner; } ;
typedef TYPE_6__ locker4 ;
typedef int bool_t ;
struct TYPE_20__ {scalar_t__ x_op; } ;
typedef TYPE_7__ XDR ;
struct TYPE_16__ {int stateid; } ;
struct TYPE_14__ {int stateid; } ;


 int FALSE ;
 scalar_t__ XDR_ENCODE ;
 int eprintf (char*,char*,scalar_t__) ;
 int xdr_bool (TYPE_7__*,scalar_t__*) ;
 int xdr_state_owner4 (TYPE_7__*,int ) ;
 int xdr_stateid4 (TYPE_7__*,int *) ;
 int xdr_u_int32_t (TYPE_7__*,int *) ;

__attribute__((used)) static bool_t xdr_locker4(
    XDR *xdr,
    locker4 *locker)
{
    if (xdr->x_op != XDR_ENCODE) {
        eprintf("%s: xdr->x_op %d is not supported!\n",
            "xdr_locker4", xdr->x_op);
        return FALSE;
    }

    if (!xdr_bool(xdr, &locker->new_lock_owner))
        return FALSE;

    if (locker->new_lock_owner) {

        if (!xdr_u_int32_t(xdr, &locker->u.open_owner.open_seqid))
            return FALSE;

        if (!xdr_stateid4(xdr, &locker->u.open_owner.open_stateid->stateid))
            return FALSE;

        if (!xdr_u_int32_t(xdr, &locker->u.open_owner.lock_seqid))
            return FALSE;

        return xdr_state_owner4(xdr, locker->u.open_owner.lock_owner);
    } else {

        if (!xdr_stateid4(xdr, &locker->u.lock_owner.lock_stateid->stateid))
            return FALSE;

        return xdr_u_int32_t(xdr, &locker->u.lock_owner.lock_seqid);
    }
}
