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
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int AUTHDES_CACHESZ ; 
 struct cache_entry* authdes_cache ; 
 int* authdes_lru ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2()
{
	int i;

	authdes_cache = (struct cache_entry *)
		FUNC1(sizeof(struct cache_entry) * AUTHDES_CACHESZ);	
	FUNC0((char *)authdes_cache, 
		sizeof(struct cache_entry) * AUTHDES_CACHESZ);

	authdes_lru = (short *)FUNC1(sizeof(short) * AUTHDES_CACHESZ);
	/*
	 * Initialize the lru list
	 */
	for (i = 0; i < AUTHDES_CACHESZ; i++) {
		authdes_lru[i] = i;
	}
}