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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  text ;
struct debug_expect {scalar_t__ debug; } ;
typedef  int /*<<< orphan*/  PGP_Context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_expect*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct debug_expect*) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  show_debug ; 

__attribute__((used)) static void
FUNC8(PGP_Context **ctx_p, int is_text,
		  text *args, struct debug_expect *ex)
{
	int			err = FUNC4(ctx_p);

	FUNC2(ex, is_text);

	if (err == 0 && args != NULL)
		err = FUNC3(*ctx_p, (uint8 *) FUNC0(args),
						 FUNC1(args), ex);

	if (err)
		FUNC6(err);

	if (ex->debug)
		FUNC7(show_debug);

	FUNC5(*ctx_p, is_text);
}