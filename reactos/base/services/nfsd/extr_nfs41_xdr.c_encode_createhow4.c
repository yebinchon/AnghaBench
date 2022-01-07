
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int createattrs; scalar_t__ createverf; } ;
typedef TYPE_1__ createhow4 ;
typedef int bool_t ;
typedef int XDR ;




 int FALSE ;

 int NFS4_VERIFIER_SIZE ;
 int TRUE ;

 int encode_createattrs4 (int *,int ) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_createhow4(
    XDR *xdr,
    createhow4 *ch)
{
    bool_t result = TRUE;

    if (!xdr_u_int32_t(xdr, &ch->mode))
        return FALSE;

    switch (ch->mode)
    {
    case 128:
    case 129:
        result = encode_createattrs4(xdr, ch->createattrs);
        break;
    case 131:
        result = xdr_opaque(xdr, (char *)ch->createverf, NFS4_VERIFIER_SIZE);
        break;
    case 130:
        if (!xdr_opaque(xdr, (char *)ch->createverf, NFS4_VERIFIER_SIZE))
            return FALSE;
        if (!encode_createattrs4(xdr, ch->createattrs))
            return FALSE;
        break;
    }
    return result;
}
