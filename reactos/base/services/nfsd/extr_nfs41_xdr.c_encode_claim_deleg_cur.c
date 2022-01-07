
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stateid4 ;
typedef int nfs41_component ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int encode_component (int *,int *) ;
 int xdr_stateid4 (int *,int *) ;

__attribute__((used)) static bool_t encode_claim_deleg_cur(
    XDR *xdr,
    stateid4 *stateid,
    nfs41_component *name)
{
    if (!xdr_stateid4(xdr, stateid))
        return FALSE;
    return encode_component(xdr, name);
}
