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
struct wined3d_adapter {scalar_t__ vram_bytes_used; } ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ INT64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

UINT64 FUNC2(struct wined3d_adapter *adapter, INT64 amount)
{
    adapter->vram_bytes_used += amount;
    FUNC0("Adjusted used adapter memory by 0x%s to 0x%s.\n",
            FUNC1(amount),
            FUNC1(adapter->vram_bytes_used));
    return adapter->vram_bytes_used;
}