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
typedef  scalar_t__ ut32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UT32_MAX ; 
 int /*<<< orphan*/  ht_primes_sizes ; 

__attribute__((used)) static inline ut32 FUNC1(ut32 idx) {
	if (idx != UT32_MAX && idx < FUNC0 (ht_primes_sizes) - 1) {
		return idx + 1;
	}
	return UT32_MAX;
}