#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_12__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_38__ {TYPE_1__* module; } ;
typedef  TYPE_9__ zend_internal_function ;
struct TYPE_37__ {int fn_flags; TYPE_7__* arg_info; int /*<<< orphan*/ * function_name; TYPE_11__* scope; TYPE_5__* prototype; } ;
struct TYPE_35__ {int fn_flags; int /*<<< orphan*/  line_end; int /*<<< orphan*/  line_start; int /*<<< orphan*/ * filename; int /*<<< orphan*/ * doc_comment; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_8__ common; TYPE_6__ op_array; } ;
typedef  TYPE_10__ zend_function ;
struct TYPE_28__ {int /*<<< orphan*/ * name; TYPE_2__* parent; } ;
typedef  TYPE_11__ zend_class_entry ;
struct TYPE_29__ {int /*<<< orphan*/ * s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_12__ smart_str ;
struct TYPE_36__ {int /*<<< orphan*/  type; } ;
struct TYPE_33__ {TYPE_3__* scope; } ;
struct TYPE_34__ {TYPE_4__ common; } ;
struct TYPE_32__ {int /*<<< orphan*/ * name; } ;
struct TYPE_31__ {int /*<<< orphan*/  function_table; } ;
struct TYPE_30__ {char* name; } ;

/* Variables and functions */
 int ZEND_ACC_ABSTRACT ; 
 int ZEND_ACC_CLOSURE ; 
 int ZEND_ACC_CTOR ; 
 int ZEND_ACC_DEPRECATED ; 
 int ZEND_ACC_DTOR ; 
 int ZEND_ACC_FINAL ; 
 int ZEND_ACC_HAS_RETURN_TYPE ; 
 int ZEND_ACC_PPP_MASK ; 
#define  ZEND_ACC_PRIVATE 130 
#define  ZEND_ACC_PROTECTED 129 
#define  ZEND_ACC_PUBLIC 128 
 int ZEND_ACC_RETURN_REFERENCE ; 
 int ZEND_ACC_STATIC ; 
 scalar_t__ ZEND_INTERNAL_FUNCTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*,TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_10__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(smart_str *str, zend_function *fptr, zend_class_entry *scope, char* indent)
{
	smart_str param_indent = {0};
	zend_function *overwrites;
	zend_string *lc_name;

	/* TBD: Repair indenting of doc comment (or is this to be done in the parser?)
	 * What's "wrong" is that any whitespace before the doc comment start is
	 * swallowed, leading to an unaligned comment.
	 */
	if (fptr->type == ZEND_USER_FUNCTION && fptr->op_array.doc_comment) {
		FUNC5(str, "%s%s\n", indent, FUNC1(fptr->op_array.doc_comment));
	}

	FUNC7(str, indent, FUNC10(indent));
	FUNC5(str, fptr->common.fn_flags & ZEND_ACC_CLOSURE ? "Closure [ " : (fptr->common.scope ? "Method [ " : "Function [ "));
	FUNC5(str, (fptr->type == ZEND_USER_FUNCTION) ? "<user" : "<internal");
	if (fptr->common.fn_flags & ZEND_ACC_DEPRECATED) {
		FUNC8(str, ", deprecated");
	}
	if (fptr->type == ZEND_INTERNAL_FUNCTION && ((zend_internal_function*)fptr)->module) {
		FUNC5(str, ":%s", ((zend_internal_function*)fptr)->module->name);
	}

	if (scope && fptr->common.scope) {
		if (fptr->common.scope != scope) {
			FUNC5(str, ", inherits %s", FUNC1(fptr->common.scope->name));
		} else if (fptr->common.scope->parent) {
			lc_name = FUNC14(fptr->common.function_name);
			if ((overwrites = FUNC11(&fptr->common.scope->parent->function_table, lc_name)) != NULL) {
				if (fptr->common.scope != overwrites->common.scope) {
					FUNC5(str, ", overwrites %s", FUNC1(overwrites->common.scope->name));
				}
			}
			FUNC13(lc_name, 0);
		}
	}
	if (fptr->common.prototype && fptr->common.prototype->common.scope) {
		FUNC5(str, ", prototype %s", FUNC1(fptr->common.prototype->common.scope->name));
	}
	if (fptr->common.fn_flags & ZEND_ACC_CTOR) {
		FUNC8(str, ", ctor");
	}
	if (fptr->common.fn_flags & ZEND_ACC_DTOR) {
		FUNC8(str, ", dtor");
	}
	FUNC8(str, "> ");

	if (fptr->common.fn_flags & ZEND_ACC_ABSTRACT) {
		FUNC8(str, "abstract ");
	}
	if (fptr->common.fn_flags & ZEND_ACC_FINAL) {
		FUNC8(str, "final ");
	}
	if (fptr->common.fn_flags & ZEND_ACC_STATIC) {
		FUNC8(str, "static ");
	}

	if (fptr->common.scope) {
		/* These are mutually exclusive */
		switch (fptr->common.fn_flags & ZEND_ACC_PPP_MASK) {
			case ZEND_ACC_PUBLIC:
				FUNC8(str, "public ");
				break;
			case ZEND_ACC_PRIVATE:
				FUNC8(str, "private ");
				break;
			case ZEND_ACC_PROTECTED:
				FUNC8(str, "protected ");
				break;
			default:
				FUNC8(str, "<visibility error> ");
				break;
		}
		FUNC8(str, "method ");
	} else {
		FUNC8(str, "function ");
	}

	if (fptr->op_array.fn_flags & ZEND_ACC_RETURN_REFERENCE) {
		FUNC6(str, '&');
	}
	FUNC5(str, "%s ] {\n", FUNC1(fptr->common.function_name));
	/* The information where a function is declared is only available for user classes */
	if (fptr->type == ZEND_USER_FUNCTION) {
		FUNC5(str, "%s  @@ %s %d - %d\n", indent,
						FUNC1(fptr->op_array.filename),
						fptr->op_array.line_start,
						fptr->op_array.line_end);
	}
	FUNC5(&param_indent, "%s  ", indent);
	FUNC4(&param_indent);
	if (fptr->common.fn_flags & ZEND_ACC_CLOSURE) {
		FUNC2(str, fptr, FUNC1(param_indent.s));
	}
	FUNC3(str, fptr, FUNC1(param_indent.s));
	FUNC9(&param_indent);
	if (fptr->op_array.fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
		FUNC5(str, "  %s- Return [ ", indent);
		if (FUNC0(fptr->common.arg_info[-1].type)) {
			zend_string *type_str = FUNC15(fptr->common.arg_info[-1].type);
			FUNC5(str, "%s ", FUNC1(type_str));
			FUNC12(type_str);
		}
		FUNC8(str, "]\n");
	}
	FUNC5(str, "%s}\n", indent);
}