#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  last; int /*<<< orphan*/  filename; int /*<<< orphan*/  line_end; int /*<<< orphan*/  line_start; TYPE_4__* opcodes; } ;
typedef  TYPE_3__ zend_op_array ;
struct TYPE_12__ {int /*<<< orphan*/  lineno; } ;
typedef  TYPE_4__ zend_op ;
struct TYPE_10__ {int /*<<< orphan*/  function_name; TYPE_1__* scope; } ;
struct TYPE_13__ {int type; TYPE_2__ common; TYPE_3__ op_array; } ;
typedef  TYPE_5__ zend_function ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  ZEND_USER_FUNCTION 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,...) ; 

__attribute__((used)) static inline void FUNC4(zend_function *method) /* {{{ */
{
	switch (method->type) {
		case ZEND_USER_FUNCTION: {
			zend_op_array* op_array = &(method->op_array);

			if (op_array) {
				zend_op *opline = &(op_array->opcodes[0]);
				uint32_t opcode = 0,
				end = op_array->last-1;

				if (method->common.scope) {
					FUNC3("printoplineinfo", "type=\"User\" startline=\"%d\" endline=\"%d\" method=\"%s::%s\" file=\"%s\" opline=\"%p\"", "L%d-%d %s::%s() %s - %p + %d ops",
						op_array->line_start,
						op_array->line_end,
						FUNC0(method->common.scope->name),
						FUNC0(method->common.function_name),
						op_array->filename ? FUNC0(op_array->filename) : "unknown",
						opline,
						op_array->last);
				} else {
					FUNC3("printoplineinfo", "type=\"User\" startline=\"%d\" endline=\"%d\" function=\"%s\" file=\"%s\" opline=\"%p\"", "L%d-%d %s() %s - %p + %d ops",
						op_array->line_start,
						op_array->line_end,
						method->common.function_name ? FUNC0(method->common.function_name) : "{main}",
						op_array->filename ? FUNC0(op_array->filename) : "unknown",
						opline,
						op_array->last);
				}

				do {
					char *decode = FUNC2(op_array, opline);
					FUNC3("print", "line=\"%u\" opnum=\"%u\" op=\"%s\"", " L%-4u #%-5u %s",
						opline->lineno,
						opcode,
						decode);
					FUNC1(decode);
					opline++;
				} while (opcode++ < end);
			}
		} break;

		default: {
			if (method->common.scope) {
				FUNC3("printoplineinfo", "type=\"Internal\" method=\"%s::%s\"", "\tInternal %s::%s()", FUNC0(method->common.scope->name), FUNC0(method->common.function_name));
			} else {
				FUNC3("printoplineinfo", "type=\"Internal\" function=\"%s\"", "\tInternal %s()", FUNC0(method->common.function_name));
			}
		}
	}
}