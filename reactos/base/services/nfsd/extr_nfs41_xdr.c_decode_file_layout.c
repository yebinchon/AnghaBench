
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct list_entry {int dummy; } ;
struct TYPE_8__ {int type; int iomode; int length; int offset; } ;
typedef TYPE_2__ pnfs_layout ;
struct TYPE_7__ {int entry; int type; int iomode; int length; int offset; } ;
struct TYPE_9__ {TYPE_1__ layout; int filehandles; int pattern_offset; int first_index; int util; scalar_t__ deviceid; } ;
typedef TYPE_3__ pnfs_file_layout ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int PNFS_DEVICEID_SIZE ;
 int TRUE ;
 TYPE_3__* calloc (int,int) ;
 int decode_file_layout_handles (int *,int *) ;
 int free (TYPE_3__*) ;
 int list_add_tail (struct list_entry*,int *) ;
 int list_init (int *) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_file_layout(
    XDR *xdr,
    struct list_entry *list,
    pnfs_layout *base)
{
    pnfs_file_layout *layout;
    u_int32_t len_ignored;

    if (!xdr_u_int32_t(xdr, &len_ignored))
        return FALSE;

    layout = calloc(1, sizeof(pnfs_file_layout));
    if (layout == ((void*)0))
        return FALSE;

    layout->layout.offset = base->offset;
    layout->layout.length = base->length;
    layout->layout.iomode = base->iomode;
    layout->layout.type = base->type;
    list_init(&layout->layout.entry);

    if (!xdr_opaque(xdr, (char *)layout->deviceid, PNFS_DEVICEID_SIZE))
        goto out_error;

    if (!xdr_u_int32_t(xdr, &layout->util))
        goto out_error;

    if (!xdr_u_int32_t(xdr, &layout->first_index))
        goto out_error;

    if (!xdr_u_hyper(xdr, &layout->pattern_offset))
        goto out_error;

    if (!decode_file_layout_handles(xdr, &layout->filehandles))
        goto out_error;

    list_add_tail(list, &layout->layout.entry);
    return TRUE;

out_error:
    free(layout);
    return FALSE;
}
