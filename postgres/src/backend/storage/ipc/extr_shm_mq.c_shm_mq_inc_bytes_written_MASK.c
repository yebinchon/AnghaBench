#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mq_bytes_written; } ;
typedef  TYPE_1__ shm_mq ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(shm_mq *mq, Size n)
{
	/*
	 * Separate prior reads of mq_ring from the write of mq_bytes_written
	 * which we're about to do.  Pairs with the read barrier found in
	 * shm_mq_receive_bytes.
	 */
	FUNC2();

	/*
	 * There's no need to use pg_atomic_fetch_add_u64 here, because nobody
	 * else can be changing this value.  This method avoids taking the bus
	 * lock unnecessarily.
	 */
	FUNC1(&mq->mq_bytes_written,
						FUNC0(&mq->mq_bytes_written) + n);
}