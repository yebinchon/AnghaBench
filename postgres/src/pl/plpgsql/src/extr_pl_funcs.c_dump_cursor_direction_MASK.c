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
struct TYPE_3__ {int direction; int how_many; scalar_t__ expr; } ;
typedef  TYPE_1__ PLpgSQL_stmt_fetch ;

/* Variables and functions */
#define  FETCH_ABSOLUTE 131 
#define  FETCH_BACKWARD 130 
#define  FETCH_FORWARD 129 
#define  FETCH_RELATIVE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dump_indent ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(PLpgSQL_stmt_fetch *stmt)
{
	dump_indent += 2;
	FUNC1();
	switch (stmt->direction)
	{
		case FETCH_FORWARD:
			FUNC2("    FORWARD ");
			break;
		case FETCH_BACKWARD:
			FUNC2("    BACKWARD ");
			break;
		case FETCH_ABSOLUTE:
			FUNC2("    ABSOLUTE ");
			break;
		case FETCH_RELATIVE:
			FUNC2("    RELATIVE ");
			break;
		default:
			FUNC2("??? unknown cursor direction %d", stmt->direction);
	}

	if (stmt->expr)
	{
		FUNC0(stmt->expr);
		FUNC2("\n");
	}
	else
		FUNC2("%ld\n", stmt->how_many);

	dump_indent -= 2;
}