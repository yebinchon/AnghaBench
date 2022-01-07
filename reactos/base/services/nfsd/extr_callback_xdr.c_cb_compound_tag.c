
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_compound_tag {scalar_t__ len; int str; } ;
typedef int bool_t ;
typedef int XDR ;


 scalar_t__ CB_COMPOUND_MAX_TAG ;
 scalar_t__ xdr_opaque (int *,int ,scalar_t__) ;
 scalar_t__ xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t cb_compound_tag(XDR *xdr, struct cb_compound_tag *args)
{
    return xdr_u_int32_t(xdr, &args->len)
        && args->len <= CB_COMPOUND_MAX_TAG
        && xdr_opaque(xdr, args->str, args->len);
}
