
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {unsigned short len; int name; } ;
typedef TYPE_1__ nfs41_component ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 scalar_t__ xdr_bytes (int *,char**,scalar_t__*,int ) ;

__attribute__((used)) static bool_t decode_component(
    XDR *xdr,
    nfs41_component *component)
{
    bool_t result;
    uint32_t len;

    result = xdr_bytes(xdr, (char **)&component->name, &len, NFS4_OPAQUE_LIMIT);
    component->len = (result == FALSE) ? 0 : (unsigned short)len;
    return result;
}
