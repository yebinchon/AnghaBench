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
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void* FUNC3(HashTable *ht, char *ref)
{
	void *tmp;

	if ((tmp = FUNC2(ht, ref, FUNC0(ref))) != NULL) {
		return tmp;
	} else {
		ref = FUNC1(ref, ':');
		if (ref) {
			if ((tmp = FUNC2(ht, ref, FUNC0(ref))) != NULL) {
				return tmp;
			}
		}
	}
	return NULL;
}