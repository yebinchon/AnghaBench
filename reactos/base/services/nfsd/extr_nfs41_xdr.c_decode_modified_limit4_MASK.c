#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC1(
    XDR *xdr,
    uint64_t *filesize)
{
    uint32_t blocks, bytes_per_block;

    if (!FUNC0(xdr, &blocks))
        return FALSE;

    if (!FUNC0(xdr, &bytes_per_block))
        return FALSE;

    *filesize = blocks * bytes_per_block;
    return TRUE;
}