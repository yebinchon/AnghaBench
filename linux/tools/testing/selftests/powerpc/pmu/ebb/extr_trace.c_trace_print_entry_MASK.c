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
struct trace_entry {int type; } ;

/* Variables and functions */
 int BASE_PREFIX ; 
 int PREFIX_DELTA ; 
#define  TRACE_TYPE_COUNTER 132 
#define  TRACE_TYPE_INDENT 131 
#define  TRACE_TYPE_OUTDENT 130 
#define  TRACE_TYPE_REG 129 
#define  TRACE_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (char*,struct trace_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_entry*) ; 

__attribute__((used)) static void FUNC6(struct trace_entry *e, int seq, int *prefix)
{
	switch (e->type) {
	case TRACE_TYPE_REG:
		FUNC3(seq, *prefix);
		FUNC4(e);
		break;
	case TRACE_TYPE_COUNTER:
		FUNC3(seq, *prefix);
		FUNC2(e);
		break;
	case TRACE_TYPE_STRING:
		FUNC3(seq, *prefix);
		FUNC5(e);
		break;
	case TRACE_TYPE_INDENT:
		FUNC3(seq, *prefix);
		FUNC1("{");
		*prefix += PREFIX_DELTA;
		break;
	case TRACE_TYPE_OUTDENT:
		*prefix -= PREFIX_DELTA;
		if (*prefix < BASE_PREFIX)
			*prefix = BASE_PREFIX;
		FUNC3(seq, *prefix);
		FUNC1("}");
		break;
	default:
		FUNC3(seq, *prefix);
		FUNC0("entry @ %p type %d\n", e, e->type);
		break;
	}
}