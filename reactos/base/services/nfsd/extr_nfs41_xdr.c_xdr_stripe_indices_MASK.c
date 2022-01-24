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
typedef  int uint32_t ;
struct TYPE_3__ {int count; int* arr; } ;
typedef  TYPE_1__ pnfs_stripe_indices ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int* FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC3(
    XDR *xdr,
    pnfs_stripe_indices *indices)
{
    uint32_t i, count;

    if (!FUNC2(xdr, &count))
        return FALSE;

    if (count && count != indices->count) {
        uint32_t *tmp;
        tmp = FUNC1(indices->arr, count * sizeof(uint32_t));
        if (tmp == NULL)
            return FALSE;
        indices->arr = tmp;
        FUNC0(indices->arr, count * sizeof(uint32_t));
        indices->count = count;
    }
    
    for (i = 0; i < indices->count; i++) {
        if (!FUNC2(xdr, &indices->arr[i]))
            return FALSE;
    }
    return TRUE;
}