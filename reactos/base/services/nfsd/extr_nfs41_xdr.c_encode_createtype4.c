
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int specdata1; int specdata2; } ;
struct TYPE_6__ {char* linkdata; int linkdata_len; } ;
struct TYPE_8__ {TYPE_2__ devdata; TYPE_1__ lnk; } ;
struct TYPE_9__ {int type; TYPE_3__ u; } ;
typedef TYPE_4__ createtype4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;



 int NFS4_OPAQUE_LIMIT ;
 int TRUE ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_createtype4(
    XDR *xdr,
    createtype4 *ct)
{
    bool_t result = TRUE;
    const char *linkdata;

    if (!xdr_u_int32_t(xdr, &ct->type))
        return FALSE;

    switch (ct->type)
    {
    case 128:
        linkdata = ct->u.lnk.linkdata;
        result = xdr_bytes(xdr, (char**)&linkdata, &ct->u.lnk.linkdata_len,
            NFS4_OPAQUE_LIMIT);
        break;
    case 130:
    case 129:
        result = xdr_u_int32_t(xdr, &ct->u.devdata.specdata1);
        if (result == TRUE)
            result = xdr_u_int32_t(xdr, &ct->u.devdata.specdata2);
        break;
    default:

        break;
    }
    return result;
}
