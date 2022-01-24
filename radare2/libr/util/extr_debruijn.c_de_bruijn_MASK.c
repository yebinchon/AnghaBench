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
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char* FUNC4(const char* charset, int order, int maxlen) {
	if (!charset) {
		return NULL;
	}
	int size = FUNC3 (charset);
	int* prenecklace_a = FUNC0 (size * order, sizeof (int));
	if (!prenecklace_a) {
		return NULL;
	}
	char* sequence = FUNC0 (maxlen + 1, sizeof (char));
	if (!sequence) {
		FUNC2 (prenecklace_a);
		return NULL;
	}
	FUNC1 (1, 1, order, maxlen, size, prenecklace_a, sequence, charset);
	FUNC2 (prenecklace_a);
	return sequence;
}