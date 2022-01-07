
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int args; int type; } ;
struct cb_layoutrecall_args {TYPE_1__ recall; int changed; int iomode; int type; } ;
typedef int enum_t ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NULL_xdrproc_t ;
 int cb_layoutrecall_discrim ;
 scalar_t__ xdr_bool (int *,int *) ;
 scalar_t__ xdr_enum (int *,int *) ;
 scalar_t__ xdr_union (int *,int *,char*,int ,int ) ;

__attribute__((used)) static bool_t op_cb_layoutrecall_args(XDR *xdr, struct cb_layoutrecall_args *args)
{
    bool_t result;

    result = xdr_enum(xdr, (enum_t*)&args->type);
    if (!result) { CBX_ERR("layoutrecall_args.type"); goto out; }

    result = xdr_enum(xdr, (enum_t*)&args->iomode);
    if (!result) { CBX_ERR("layoutrecall_args.iomode"); goto out; }

    result = xdr_bool(xdr, &args->changed);
    if (!result) { CBX_ERR("layoutrecall_args.changed"); goto out; }

    result = xdr_union(xdr, (enum_t*)&args->recall.type,
        (char*)&args->recall.args, cb_layoutrecall_discrim, NULL_xdrproc_t);
    if (!result) { CBX_ERR("layoutrecall_args.recall"); goto out; }
out:
    return result;
}
