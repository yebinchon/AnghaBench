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
struct process {int dummy; } ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct process*) ; 
 scalar_t__ FUNC1 (struct process*) ; 

__attribute__((used)) static BOOL FUNC2(struct process* pcs)
{
    /* force transparent ELF and Mach-O loading / unloading */
    return FUNC0(pcs) || FUNC1(pcs);
}