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
typedef  int /*<<< orphan*/  bytea ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bytea *
FUNC7(bytea *leaf)
{
	bytea	   *out = leaf;
	int			sz = FUNC2(leaf) + VARHDRSZ;
	int			padded_sz = FUNC0(sz);

	out = (bytea *) FUNC6(padded_sz);
	/* initialize the padding bytes to zero */
	while (sz < padded_sz)
		((char *) out)[sz++] = 0;
	FUNC1(out, padded_sz);
	FUNC5((void *) FUNC4(out), (void *) FUNC3(leaf), FUNC2(leaf));
	return out;
}