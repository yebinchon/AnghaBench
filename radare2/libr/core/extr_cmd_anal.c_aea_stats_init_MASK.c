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
struct TYPE_3__ {void* inputregs; void* regwrite; void* regread; void* regs; } ;
typedef  TYPE_1__ AeaStats ;

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (AeaStats *stats) {
	stats->regs = FUNC0 (free);
	stats->regread = FUNC0 (free);
	stats->regwrite = FUNC0 (free);
	stats->inputregs = FUNC0 (free);
}