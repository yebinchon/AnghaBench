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
typedef  size_t uint32_t ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ mdsthreshold4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_MDSTHRESHOLD_ITEMS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    mdsthreshold4 *mdsthreshold)
{
    uint32_t i;

    if (!FUNC1(xdr, &mdsthreshold->count))
        return FALSE;

    if (mdsthreshold->count > MAX_MDSTHRESHOLD_ITEMS)
        return FALSE;

    for (i = 0; i < mdsthreshold->count; i++)
        if (!FUNC0(xdr, &mdsthreshold->items[i]))
            return FALSE;
    return TRUE;
}