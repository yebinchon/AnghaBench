
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int open_delegation4 ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;


 int xdr_bool (int *,int *) ;
 int xdr_enum (int *,int*) ;

__attribute__((used)) static bool_t decode_open_none_delegation4(
    XDR *xdr,
    open_delegation4 *delegation)
{
    enum_t why_no_deleg;
    bool_t will_signal;

    if (!xdr_enum(xdr, (enum_t*)&why_no_deleg))
        return FALSE;

    switch (why_no_deleg)
    {
    case 129:
    case 128:
        return xdr_bool(xdr, &will_signal);
    default:
        return TRUE;
    }
}
