#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct list_entry {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; int /*<<< orphan*/  iomode; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ pnfs_layout ;
struct TYPE_7__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  type; int /*<<< orphan*/  iomode; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {TYPE_1__ layout; int /*<<< orphan*/  filehandles; int /*<<< orphan*/  pattern_offset; int /*<<< orphan*/  first_index; int /*<<< orphan*/  util; scalar_t__ deviceid; } ;
typedef  TYPE_3__ pnfs_file_layout ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PNFS_DEVICEID_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC8(
    XDR *xdr,
    struct list_entry *list,
    pnfs_layout *base)
{
    pnfs_file_layout *layout;
    u_int32_t len_ignored;

    if (!FUNC7(xdr, &len_ignored))
        return FALSE;

    layout = FUNC0(1, sizeof(pnfs_file_layout));
    if (layout == NULL)
        return FALSE;

    layout->layout.offset = base->offset;
    layout->layout.length = base->length;
    layout->layout.iomode = base->iomode;
    layout->layout.type = base->type;
    FUNC4(&layout->layout.entry);

    if (!FUNC5(xdr, (char *)layout->deviceid, PNFS_DEVICEID_SIZE))
        goto out_error;

    if (!FUNC7(xdr, &layout->util))
        goto out_error;

    if (!FUNC7(xdr, &layout->first_index))
        goto out_error;

    if (!FUNC6(xdr, &layout->pattern_offset))
        goto out_error;

    if (!FUNC1(xdr, &layout->filehandles))
        goto out_error;

    FUNC3(list, &layout->layout.entry);
    return TRUE;

out_error:
    FUNC2(layout);
    return FALSE;
}