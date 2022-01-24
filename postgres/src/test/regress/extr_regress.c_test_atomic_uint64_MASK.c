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
typedef  int uint64 ;
typedef  int /*<<< orphan*/  pg_atomic_uint64 ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC14(void)
{
	pg_atomic_uint64 var;
	uint64		expected;
	int			i;

	FUNC10(&var, 0);
	FUNC0(FUNC11(&var), 0);
	FUNC13(&var, 3);
	FUNC0(FUNC11(&var), 3);
	FUNC0(FUNC6(&var, FUNC11(&var) - 2),
				  3);
	FUNC0(FUNC9(&var, 1), 4);
	FUNC0(FUNC12(&var, 3), 0);
	FUNC0(FUNC3(&var, 10), 10);
	FUNC0(FUNC5(&var, 5), 10);
	FUNC0(FUNC5(&var, 0), 5);

	/* fail exchange because of old expected */
	expected = 10;
	FUNC1(!FUNC4(&var, &expected, 1));

	/* CAS is allowed to fail due to interrupts, try a couple of times */
	for (i = 0; i < 100; i++)
	{
		expected = 0;
		if (!FUNC4(&var, &expected, 1))
			break;
	}
	if (i == 100)
		FUNC2(ERROR, "atomic_compare_exchange_u64() never succeeded");
	FUNC0(FUNC11(&var), 1);

	FUNC13(&var, 0);

	/* try setting flagbits */
	FUNC1(!(FUNC8(&var, 1) & 1));
	FUNC1(FUNC8(&var, 2) & 1);
	FUNC0(FUNC11(&var), 3);
	/* try clearing flagbits */
	FUNC0((FUNC7(&var, ~2) & 3), 3);
	FUNC0(FUNC7(&var, ~1), 1);
	/* no bits set anymore */
	FUNC0(FUNC7(&var, ~0), 0);
}