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
 int FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(int prenecklace_len_t, int lyndon_prefix_len_p, int order,
		int maxlen, int size, int* prenecklace_a, char* sequence, const char* charset) {
	int j;
	if (!charset || !sequence || FUNC0 (sequence) == maxlen) {
		return;
	}
	if (prenecklace_len_t > order) {
		if (order % lyndon_prefix_len_p == 0) {
			for (j = 1; j <= lyndon_prefix_len_p; ++j) {
				sequence[FUNC0(sequence)] = charset[prenecklace_a[j]];
				if (FUNC0 (sequence) == maxlen) {
					return;
				}
			}
		}
	} else {
		prenecklace_a[prenecklace_len_t] =
			prenecklace_a[prenecklace_len_t - lyndon_prefix_len_p];
		FUNC1(prenecklace_len_t + 1, lyndon_prefix_len_p, order, maxlen,
				size, prenecklace_a, sequence, charset);
		for (j = prenecklace_a[prenecklace_len_t - lyndon_prefix_len_p] + 1;
				j < size; ++j) {
			prenecklace_a[prenecklace_len_t] = j;
			FUNC1 (prenecklace_len_t + 1, prenecklace_len_t, order, maxlen,
					size, prenecklace_a, sequence, charset);
		}
	}
}