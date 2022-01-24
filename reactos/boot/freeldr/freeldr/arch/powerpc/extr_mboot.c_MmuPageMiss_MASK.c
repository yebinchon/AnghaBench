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
struct TYPE_3__ {int* gpr; } ;
typedef  TYPE_1__ ppc_trap_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(int trapCode, ppc_trap_frame_t *trap)
{
    int i;
    FUNC0("TRAP %x\n", trapCode);
    for( i = 0; i < 40; i++ )
    FUNC0("r[%d] %x\n", i, trap->gpr[i]);
    FUNC0("HALT!\n");
    while(1);
}