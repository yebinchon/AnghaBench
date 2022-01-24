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
struct PcapFile {scalar_t__ fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct PcapFile*) ; 

void FUNC2(struct PcapFile *handle)
{
    if (handle == NULL)
        return;
    if (handle->fp)
        FUNC0(handle->fp);
    FUNC1(handle);
}