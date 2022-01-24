#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_entry {int dummy; } ;
struct TYPE_3__ {int type; int /*<<< orphan*/  iomode; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ pnfs_layout ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  PNFS_LAYOUTTYPE_FILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    struct list_entry *list)
{
    pnfs_layout layout;

    if (!FUNC3(xdr, &layout.offset))
        return FALSE;

    if (!FUNC3(xdr, &layout.length))
        return FALSE;

    if (!FUNC2(xdr, (enum_t *)&layout.iomode))
        return FALSE;

    if (!FUNC2(xdr, (enum_t *)&layout.type))
        return FALSE;

    switch (layout.type) {
    case PNFS_LAYOUTTYPE_FILE:
        return FUNC0(xdr, list, &layout);

    default:
        FUNC1("%s: received non-FILE layout type, %d\n",
            "decode_file_layout", layout.type);
    }
    return FALSE;
}