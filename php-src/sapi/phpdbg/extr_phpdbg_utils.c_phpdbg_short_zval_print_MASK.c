#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ zend_ast ;
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
#define  IS_ARRAY 138 
#define  IS_CONSTANT_AST 137 
#define  IS_DOUBLE 136 
#define  IS_FALSE 135 
#define  IS_LONG 134 
#define  IS_NULL 133 
#define  IS_OBJECT 132 
#define  IS_RESOURCE 131 
#define  IS_STRING 130 
#define  IS_TRUE 129 
#define  IS_UNDEF 128 
 int /*<<< orphan*/  ZEND_AST_CONSTANT ; 
 int /*<<< orphan*/  ZEND_AST_CONSTANT_CLASS ; 
 char* ZEND_LONG_FMT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char**,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,char) ; 
 size_t FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

char *FUNC21(zval *zv, int maxlen) /* {{{ */
{
	char *decode = NULL;

	switch (FUNC9(zv)) {
		case IS_UNDEF:
			decode = FUNC12("");
			break;
		case IS_NULL:
			decode = FUNC12("null");
			break;
		case IS_FALSE:
			decode = FUNC12("false");
			break;
		case IS_TRUE:
			decode = FUNC12("true");
			break;
		case IS_LONG:
			FUNC15(&decode, 0, ZEND_LONG_FMT, FUNC5(zv));
			break;
		case IS_DOUBLE:
			FUNC15(&decode, 0, "%.*G", 14, FUNC4(zv));

			/* Make sure it looks like a float */
			if (FUNC18(FUNC4(zv)) && !FUNC16(decode, '.')) {
				size_t len = FUNC17(decode);
				char *decode2 = FUNC11(len + FUNC17(".0") + 1);
				FUNC13(decode2, decode, len);
				decode2[len] = '.';
				decode2[len+1] = '0';
				decode2[len+2] = '\0';
				FUNC10(decode);
				decode = decode2;
			}
			break;
		case IS_STRING: {
			int i;
			zend_string *str = FUNC14(FUNC8(zv), "\\\"\n\t\0", 5);
			for (i = 0; i < FUNC0(str); i++) {
				if (FUNC1(str)[i] < 32) {
					FUNC1(str)[i] = ' ';
				}
			}
			FUNC15(&decode, 0, "\"%.*s\"%c",
				FUNC0(str) <= maxlen - 2 ? (int) FUNC0(str) : (maxlen - 3),
				FUNC1(str), FUNC0(str) <= maxlen - 2 ? 0 : '+');
			FUNC20(str);
			} break;
		case IS_RESOURCE:
			FUNC15(&decode, 0, "Rsrc #%d", FUNC7(zv));
			break;
		case IS_ARRAY:
			FUNC15(&decode, 0, "array(%d)", FUNC19(FUNC2(zv)));
			break;
		case IS_OBJECT: {
			zend_string *str = FUNC6(zv)->name;
			FUNC15(&decode, 0, "%.*s%c",
				FUNC0(str) <= maxlen ? (int) FUNC0(str) : maxlen - 1,
				FUNC1(str), FUNC0(str) <= maxlen ? 0 : '+');
			break;
		}
		case IS_CONSTANT_AST: {
			zend_ast *ast = FUNC3(zv);

			if (ast->kind == ZEND_AST_CONSTANT
			 || ast->kind == ZEND_AST_CONSTANT_CLASS) {
				decode = FUNC12("<constant>");
			} else {
				decode = FUNC12("<ast>");
			}
			break;
		}
		default:
			FUNC15(&decode, 0, "unknown type: %d", FUNC9(zv));
			break;
	}

	return decode;
}