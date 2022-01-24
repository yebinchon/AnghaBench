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
 unsigned int RIM_CHUNK_SIZE ; 
 char* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int volatile*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(unsigned int tid, unsigned int *next_store_addr,
		  unsigned int cur_sweep_id,
		  unsigned int prev_sweep_id)
{
	unsigned int *iter_ptr;
	unsigned int size = RIM_CHUNK_SIZE;
	unsigned int expected;
	unsigned int observed;
	char *chunk_start = FUNC0(tid);

	int nr_anamolies = 0;

	FUNC5(tid, next_store_addr,
			       cur_sweep_id, prev_sweep_id);

	for (iter_ptr = (unsigned int *)chunk_start;
	     (unsigned long)iter_ptr < (unsigned long)chunk_start + size;
	     iter_ptr++) {
		unsigned int expected_sweep_id;

		if (iter_ptr < next_store_addr) {
			expected_sweep_id = cur_sweep_id;
		} else {
			expected_sweep_id = prev_sweep_id;
		}

		expected = FUNC1(tid, iter_ptr, expected_sweep_id);

		FUNC2((volatile unsigned int*)iter_ptr); //Flush before reading
		observed = *iter_ptr;

	        if (observed != expected) {
			nr_anamolies++;
			FUNC4(tid, iter_ptr, expected, observed);
		}
	}

	FUNC3(tid, nr_anamolies);
}