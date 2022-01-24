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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  BufferTag ;
typedef  int /*<<< orphan*/  BufferLookupEnt ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  SharedBufHash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(BufferTag *tagPtr, uint32 hashcode)
{
	BufferLookupEnt *result;

	result = (BufferLookupEnt *)
		FUNC1(SharedBufHash,
									(void *) tagPtr,
									hashcode,
									HASH_REMOVE,
									NULL);

	if (!result)				/* shouldn't happen */
		FUNC0(ERROR, "shared buffer hash table corrupted");
}