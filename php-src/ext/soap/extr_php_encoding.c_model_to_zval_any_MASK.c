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
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  XSD_ANYXML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(zval *ret, xmlNodePtr node)
{
	zval rv, arr, val, keepVal;
	zval* any = NULL;
	char* name = NULL;

	while (node != NULL) {
		if (FUNC12(ret, (char*)node->name, &rv) == NULL) {

			FUNC1(&val);
			FUNC13(&val, FUNC11(XSD_ANYXML), node);

			if (any && FUNC6(any) != IS_ARRAY) {
				/* Convert into array */
				FUNC9(&arr);
				if (name) {
					FUNC7(&arr, name, any);
				} else {
					FUNC8(&arr, any);
				}
				any = &arr;
			}

			if (FUNC5(val) == IS_STRING && *FUNC3(val) == '<') {
				name = NULL;
				while (node->next != NULL) {
					zval val2;

					FUNC1(&val2);
					FUNC13(&val2, FUNC11(XSD_ANYXML), node->next);
					if (FUNC5(val2) != IS_STRING ||  *FUNC3(val) != '<') {
						FUNC4(val2);
						break;
					}
					FUNC10(&val, &val, &val2);
					FUNC17(&val2);
					node = node->next;
				}
			} else {
				name = (char*)node->name;
			}

			if (any == NULL) {
				if (name) {
					/* Convert into array */
					FUNC9(&arr);
					FUNC7(&arr, name, &val);
					any = &arr;
					name = NULL;
				} else {
					FUNC0(&keepVal, &val);
					any = &keepVal;
				}
			} else {
				/* Add array element */
				if (name) {
					zval *el;
					if ((el = FUNC16(FUNC2(any), name, FUNC15(name))) != NULL) {
						if (FUNC6(el) != IS_ARRAY) {
							/* Convert into array */
							FUNC9(&arr);
							FUNC8(&arr, el);
							el = &arr;
						}
						FUNC8(el, &val);
					} else {
						FUNC7(any, name, &val);
					}
				} else {
					FUNC8(any, &val);
				}
				name = NULL;
			}
		}
		node = node->next;
	}
	if (any) {
		FUNC14(ret, name ? name : "any", any);
	}
}