#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * index; } ;
struct TYPE_4__ {scalar_t__ size; void* location; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__ ShmemIndexEnt ;
typedef  TYPE_2__ PGShmemHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER_NULL ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC4 (void*) ; 
 void* FUNC5 (scalar_t__) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ShmemIndex ; 
 int /*<<< orphan*/  ShmemIndexLock ; 
 TYPE_2__* ShmemSegHdr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

void *
FUNC12(const char *name, Size size, bool *foundPtr)
{
	ShmemIndexEnt *result;
	void	   *structPtr;

	FUNC2(ShmemIndexLock, LW_EXCLUSIVE);

	if (!ShmemIndex)
	{
		PGShmemHeader *shmemseghdr = ShmemSegHdr;

		/* Must be trying to create/attach to ShmemIndex itself */
		FUNC0(FUNC11(name, "ShmemIndex") == 0);

		if (IsUnderPostmaster)
		{
			/* Must be initializing a (non-standalone) backend */
			FUNC0(shmemseghdr->index != NULL);
			structPtr = shmemseghdr->index;
			*foundPtr = true;
		}
		else
		{
			/*
			 * If the shmem index doesn't exist, we are bootstrapping: we must
			 * be trying to init the shmem index itself.
			 *
			 * Notice that the ShmemIndexLock is released before the shmem
			 * index has been initialized.  This should be OK because no other
			 * process can be accessing shared memory yet.
			 */
			FUNC0(shmemseghdr->index == NULL);
			structPtr = FUNC5(size);
			shmemseghdr->index = structPtr;
			*foundPtr = false;
		}
		FUNC3(ShmemIndexLock);
		return structPtr;
	}

	/* look it up in the shmem index */
	result = (ShmemIndexEnt *)
		FUNC10(ShmemIndex, name, HASH_ENTER_NULL, foundPtr);

	if (!result)
	{
		FUNC3(ShmemIndexLock);
		FUNC7(ERROR,
				(FUNC8(ERRCODE_OUT_OF_MEMORY),
				 FUNC9("could not create ShmemIndex entry for data structure \"%s\"",
						name)));
	}

	if (*foundPtr)
	{
		/*
		 * Structure is in the shmem index so someone else has allocated it
		 * already.  The size better be the same as the size we are trying to
		 * initialize to, or there is a name conflict (or worse).
		 */
		if (result->size != size)
		{
			FUNC3(ShmemIndexLock);
			FUNC7(ERROR,
					(FUNC9("ShmemIndex entry size is wrong for data structure"
							" \"%s\": expected %zu, actual %zu",
							name, size, result->size)));
		}
		structPtr = result->location;
	}
	else
	{
		/* It isn't in the table yet. allocate and initialize it */
		structPtr = FUNC6(size);
		if (structPtr == NULL)
		{
			/* out of memory; remove the failed ShmemIndex entry */
			FUNC10(ShmemIndex, name, HASH_REMOVE, NULL);
			FUNC3(ShmemIndexLock);
			FUNC7(ERROR,
					(FUNC8(ERRCODE_OUT_OF_MEMORY),
					 FUNC9("not enough shared memory for data structure"
							" \"%s\" (%zu bytes requested)",
							name, size)));
		}
		result->size = size;
		result->location = structPtr;
	}

	FUNC3(ShmemIndexLock);

	FUNC0(FUNC4(structPtr));

	FUNC0(structPtr == (void *) FUNC1(structPtr));

	return structPtr;
}