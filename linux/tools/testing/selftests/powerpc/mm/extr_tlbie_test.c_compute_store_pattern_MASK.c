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

/* Variables and functions */
 unsigned int SWEEP_ID_MASK ; 
 unsigned int SWEEP_ID_SHIFT ; 
 unsigned int THREAD_ID_MASK ; 
 unsigned int THREAD_ID_SHIFT ; 
 unsigned int WORD_OFFSET_MASK ; 
 unsigned int WORD_OFFSET_SHIFT ; 
 char* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (char*,unsigned int*) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned int tid,
						 unsigned int *addr,
						 unsigned int sweep_id)
{
	unsigned int ret = 0;
	char *start = FUNC0(tid);
	unsigned int word_offset = FUNC1(start, addr);

	ret += (tid & THREAD_ID_MASK) << THREAD_ID_SHIFT;
	ret += (word_offset & WORD_OFFSET_MASK) << WORD_OFFSET_SHIFT;
	ret += (sweep_id & SWEEP_ID_MASK) << SWEEP_ID_SHIFT;
	return ret;
}