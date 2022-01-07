
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ other; int seqid; } ;
typedef TYPE_1__ stateid4 ;
typedef int bool_t ;
typedef int XDR ;


 int NFS4_STATEID_OTHER ;
 scalar_t__ xdr_opaque (int *,char*,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t common_stateid(XDR *xdr, stateid4 *stateid)
{
    return xdr_u_int32_t(xdr, &stateid->seqid)
        && xdr_opaque(xdr, (char*)stateid->other, NFS4_STATEID_OTHER);
}
