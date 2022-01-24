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
typedef  int u_int32_t ;
struct TYPE_3__ {int location_count; int /*<<< orphan*/ * locations; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ fs_locations4 ;
typedef  int /*<<< orphan*/  fs_location4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC6(
    XDR *xdr,
    fs_locations4 *locations)
{
    u_int32_t i, count;
    fs_location4 *arr;

    if (!FUNC2(xdr, &locations->path))
        return FALSE;

    if (!FUNC5(xdr, &count))
        return FALSE;

    /* allocate the fs_location array */
    if (count == 0) {
        FUNC3(locations->locations);
        arr = NULL;
    } else if (count != locations->location_count) {
        arr = FUNC4(locations->locations, count * sizeof(fs_location4));
        if (arr == NULL)
            return FALSE;
        FUNC0(arr, count * sizeof(fs_location4));
    } else {
        arr = locations->locations;
    }

    locations->locations = arr;
    locations->location_count = count;

    for (i = 0; i < count; i++) {
        if (!FUNC1(xdr, &arr[i])) {
            FUNC3(arr);
            return FALSE;
        }
    }
    return TRUE;
}