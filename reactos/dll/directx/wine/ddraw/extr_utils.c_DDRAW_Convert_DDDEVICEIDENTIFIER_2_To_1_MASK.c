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
typedef  int /*<<< orphan*/  DDDEVICEIDENTIFIER2 ;
typedef  int /*<<< orphan*/  DDDEVICEIDENTIFIER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC1(const DDDEVICEIDENTIFIER2* pIn, DDDEVICEIDENTIFIER* pOut)
{
    /* 2 adds a dwWHQLLevel field to the end. Both structures are
     * unversioned. */
    FUNC0(pOut, pIn, sizeof(*pOut));
}