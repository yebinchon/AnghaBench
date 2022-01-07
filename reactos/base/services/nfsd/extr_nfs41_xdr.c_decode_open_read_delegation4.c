
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int permissions; int recalled; int stateid; } ;
typedef TYPE_1__ open_delegation4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_bool (int *,int *) ;
 int xdr_nfsace4 (int *,int *) ;
 int xdr_stateid4 (int *,int *) ;

__attribute__((used)) static bool_t decode_open_read_delegation4(
    XDR *xdr,
    open_delegation4 *delegation)
{
    if (!xdr_stateid4(xdr, &delegation->stateid))
        return FALSE;

    if (!xdr_bool(xdr, &delegation->recalled))
        return FALSE;

    return xdr_nfsace4(xdr, &delegation->permissions);
}
