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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/ * PUCHAR ;

/* Variables and functions */
 scalar_t__ NV2A_CRTC_REGISTER_INDEX ; 
 scalar_t__ NV2A_CRTC_REGISTER_VALUE ; 

UCHAR
FUNC0(UCHAR Index)
{
    *((PUCHAR) NV2A_CRTC_REGISTER_INDEX) = Index;
    return *((PUCHAR) NV2A_CRTC_REGISTER_VALUE);
}