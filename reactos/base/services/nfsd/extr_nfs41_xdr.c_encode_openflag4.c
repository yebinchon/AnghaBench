
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opentype; int how; } ;
typedef TYPE_1__ openflag4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;

 int TRUE ;
 int encode_createhow4 (int *,int *) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_openflag4(
    XDR *xdr,
    openflag4 *of)
{
    bool_t result = TRUE;

    if (!xdr_u_int32_t(xdr, &of->opentype))
        return FALSE;

    switch (of->opentype)
    {
    case 128:
        result = encode_createhow4(xdr, &of->how);
        break;
    default:
        break;
    }
    return result;
}
