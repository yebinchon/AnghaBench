
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct TYPE_3__ {int type; int iomode; int length; int offset; } ;
typedef TYPE_1__ pnfs_layout ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;

 int decode_file_layout (int *,struct list_entry*,TYPE_1__*) ;
 int eprintf (char*,char*,int) ;
 int xdr_enum (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;

__attribute__((used)) static bool_t decode_layout(
    XDR *xdr,
    struct list_entry *list)
{
    pnfs_layout layout;

    if (!xdr_u_hyper(xdr, &layout.offset))
        return FALSE;

    if (!xdr_u_hyper(xdr, &layout.length))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&layout.iomode))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&layout.type))
        return FALSE;

    switch (layout.type) {
    case 128:
        return decode_file_layout(xdr, list, &layout);

    default:
        eprintf("%s: received non-FILE layout type, %d\n",
            "decode_file_layout", layout.type);
    }
    return FALSE;
}
