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
typedef  int /*<<< orphan*/  spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(spl_array_object* intern, HashTable *ht) { /* {{{ */
	HashTable **ht_ptr = FUNC0(intern);
	FUNC1(*ht_ptr);
	*ht_ptr = ht;
}