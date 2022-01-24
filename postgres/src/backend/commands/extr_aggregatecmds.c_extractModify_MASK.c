#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  defname; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 char AGGMODIFY_READ_ONLY ; 
 char AGGMODIFY_READ_WRITE ; 
 char AGGMODIFY_SHAREABLE ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static char
FUNC5(DefElem *defel)
{
	char	   *val = FUNC0(defel);

	if (FUNC4(val, "read_only") == 0)
		return AGGMODIFY_READ_ONLY;
	if (FUNC4(val, "shareable") == 0)
		return AGGMODIFY_SHAREABLE;
	if (FUNC4(val, "read_write") == 0)
		return AGGMODIFY_READ_WRITE;
	FUNC1(ERROR,
			(FUNC2(ERRCODE_SYNTAX_ERROR),
			 FUNC3("parameter \"%s\" must be READ_ONLY, SHAREABLE, or READ_WRITE",
					defel->defname)));
	return 0;					/* keep compiler quiet */
}