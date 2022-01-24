#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int nNumUsed; scalar_t__ nTableMask; } ;
typedef  TYPE_1__ HashTable ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HASH_FLAG_PACKED ; 
 int HASH_FLAG_UNINITIALIZED ; 
 int FUNC1 (TYPE_1__*) ; 
 int HT_MIN_SIZE ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(HashTable *ht)
{
	if ((FUNC1(ht) & HASH_FLAG_UNINITIALIZED) || ht->nNumUsed == 0) {
		return;
	}

	if (!(FUNC1(ht) & HASH_FLAG_PACKED) && ht->nNumUsed > HT_MIN_SIZE && ht->nNumUsed < (uint32_t)(-(int32_t)ht->nTableMask) / 4) {
		/* compact table */
		uint32_t hash_size;

		hash_size = (uint32_t)(-(int32_t)ht->nTableMask);
		while (hash_size >> 2 > ht->nNumUsed) {
			hash_size >>= 1;
		}
		FUNC0(hash_size * sizeof(uint32_t) + ht->nNumUsed * sizeof(Bucket));
	} else {
		FUNC0(FUNC2(ht));
	}
}