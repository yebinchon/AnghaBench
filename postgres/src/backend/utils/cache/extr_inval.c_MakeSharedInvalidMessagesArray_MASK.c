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
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;

/* Variables and functions */
 int FIRSTCHUNKSIZE ; 
 int /*<<< orphan*/ * SharedInvalidMessagesArray ; 
 int maxSharedInvalidMessagesArray ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int numSharedInvalidMessagesArray ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(const SharedInvalidationMessage *msgs, int n)
{
	/*
	 * Initialise array first time through in each commit
	 */
	if (SharedInvalidMessagesArray == NULL)
	{
		maxSharedInvalidMessagesArray = FIRSTCHUNKSIZE;
		numSharedInvalidMessagesArray = 0;

		/*
		 * Although this is being palloc'd we don't actually free it directly.
		 * We're so close to EOXact that we now we're going to lose it anyhow.
		 */
		SharedInvalidMessagesArray = FUNC1(maxSharedInvalidMessagesArray
											* sizeof(SharedInvalidationMessage));
	}

	if ((numSharedInvalidMessagesArray + n) > maxSharedInvalidMessagesArray)
	{
		while ((numSharedInvalidMessagesArray + n) > maxSharedInvalidMessagesArray)
			maxSharedInvalidMessagesArray *= 2;

		SharedInvalidMessagesArray = FUNC2(SharedInvalidMessagesArray,
											  maxSharedInvalidMessagesArray
											  * sizeof(SharedInvalidationMessage));
	}

	/*
	 * Append the next chunk onto the array
	 */
	FUNC0(SharedInvalidMessagesArray + numSharedInvalidMessagesArray,
		   msgs, n * sizeof(SharedInvalidationMessage));
	numSharedInvalidMessagesArray += n;
}