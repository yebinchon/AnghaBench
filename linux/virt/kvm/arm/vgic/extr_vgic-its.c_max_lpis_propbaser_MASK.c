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
typedef  int u64 ;
typedef  unsigned int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  INTERRUPT_ID_BITS_ITS ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(u64 propbaser)
{
	int nr_idbits = (propbaser & 0x1f) + 1;

	return 1U << FUNC0(nr_idbits, INTERRUPT_ID_BITS_ITS);
}