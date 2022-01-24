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
typedef  int /*<<< orphan*/  security_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  avc_mem_cxt ; 
 char* avc_unlabeled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC9(void)
{
	if (!avc_unlabeled)
	{
		security_context_t unlabeled;

		if (FUNC8("unlabeled", &unlabeled) < 0)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INTERNAL_ERROR),
					 FUNC6("SELinux: failed to get initial security label: %m")));
		FUNC3();
		{
			avc_unlabeled = FUNC0(avc_mem_cxt, unlabeled);
		}
		FUNC2();
		{
			FUNC7(unlabeled);
		}
		FUNC1();
	}
	return avc_unlabeled;
}