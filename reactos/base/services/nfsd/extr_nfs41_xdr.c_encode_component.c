
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int name; int len; } ;
typedef TYPE_1__ nfs41_component ;
typedef int bool_t ;
typedef int XDR ;


 int NFS4_OPAQUE_LIMIT ;
 int xdr_bytes (int *,char**,int *,int ) ;

__attribute__((used)) static bool_t encode_component(
    XDR *xdr,
    const nfs41_component *component)
{
    uint32_t len = component->len;
    return xdr_bytes(xdr, (char **)&component->name, &len, NFS4_OPAQUE_LIMIT);
}
