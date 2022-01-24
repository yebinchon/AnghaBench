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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int SB_RAM0_DWLEN ; 
 unsigned int SB_RAM1_DWLEN ; 
 unsigned int SB_RAM2_DWLEN ; 
 unsigned int SB_RAM3_DWLEN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int SB_RAM6_DWLEN ; 

__attribute__((used)) static inline void FUNC3(void)
{
    volatile u32 *p;
    unsigned int i;

    p = FUNC1(0);
    for ( i = 0; i < SB_RAM0_DWLEN + SB_RAM1_DWLEN + SB_RAM2_DWLEN + SB_RAM3_DWLEN; i++ )
        FUNC0(0, p++);

    p = FUNC2(0);
    for ( i = 0; i < SB_RAM6_DWLEN; i++ )
        FUNC0(0, p++);
}