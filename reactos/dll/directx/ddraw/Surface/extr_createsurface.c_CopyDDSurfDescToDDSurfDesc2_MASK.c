#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dwSize; } ;
typedef  TYPE_1__* LPDDSURFACEDESC2 ;
typedef  int /*<<< orphan*/  LPDDSURFACEDESC ;
typedef  int /*<<< orphan*/  DDSURFACEDESC2 ;
typedef  int /*<<< orphan*/  DDSURFACEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(LPDDSURFACEDESC2 dst_pDesc, LPDDSURFACEDESC src_pDesc)
{
    FUNC1(dst_pDesc,sizeof(DDSURFACEDESC2));
    FUNC0(dst_pDesc,src_pDesc,sizeof(DDSURFACEDESC));
    dst_pDesc->dwSize =  sizeof(DDSURFACEDESC2);
}