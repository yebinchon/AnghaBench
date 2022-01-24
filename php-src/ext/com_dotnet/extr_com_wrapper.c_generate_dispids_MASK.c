#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/ * name_to_dispid; int /*<<< orphan*/ * dispid_to_name; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ php_dispatchex ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_5__ {int /*<<< orphan*/  function_table; } ;
typedef  int /*<<< orphan*/  HashPosition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HASH_KEY_IS_LONG ; 
 int HASH_KEY_NON_EXISTENT ; 
 char* ZEND_ULONG_FMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ZVAL_PTR_DTOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(php_dispatchex *disp)
{
	HashPosition pos;
	zend_string *name = NULL;
	zval *tmp, tmp2;
	int keytype;
	zend_ulong pid;

	if (disp->dispid_to_name == NULL) {
		FUNC0(disp->dispid_to_name);
		FUNC0(disp->name_to_dispid);
		FUNC10(disp->name_to_dispid, 0, NULL, ZVAL_PTR_DTOR, 0);
		FUNC10(disp->dispid_to_name, 0, NULL, ZVAL_PTR_DTOR, 0);
	}

	/* properties */
	if (FUNC4(disp->object)) {
		FUNC11(FUNC4(disp->object), &pos);
		while (HASH_KEY_NON_EXISTENT != (keytype =
				FUNC8(FUNC4(disp->object), &name,
				&pid, &pos))) {
			char namebuf[32];
			if (keytype == HASH_KEY_IS_LONG) {
				FUNC5(namebuf, sizeof(namebuf), ZEND_ULONG_FMT, pid);
				name = FUNC16(namebuf, FUNC6(namebuf), 0);
			} else {
				FUNC15(name);
			}

			FUNC12(FUNC4(disp->object), &pos);

			/* Find the existing id */
			if ((tmp = FUNC7(disp->name_to_dispid, name)) != NULL) {
				FUNC17(name, 0);
				continue;
			}

			/* add the mappings */
			FUNC2(&tmp2, name);
			pid = FUNC13(disp->dispid_to_name);
			FUNC9(disp->dispid_to_name, pid, &tmp2);

			FUNC1(&tmp2, pid);
			FUNC14(disp->name_to_dispid, name, &tmp2);

			FUNC17(name, 0);
		}
	}

	/* functions */
	if (FUNC3(disp->object)) {
		FUNC11(&FUNC3(disp->object)->function_table, &pos);
		while (HASH_KEY_NON_EXISTENT != (keytype =
				FUNC8(&FUNC3(disp->object)->function_table,
			 	&name, &pid, &pos))) {

			char namebuf[32];
			if (keytype == HASH_KEY_IS_LONG) {
				FUNC5(namebuf, sizeof(namebuf), "%d", pid);
				name = FUNC16(namebuf, FUNC6(namebuf), 0);
			} else {
				FUNC15(name);
			}

			FUNC12(&FUNC3(disp->object)->function_table, &pos);

			/* Find the existing id */
			if ((tmp = FUNC7(disp->name_to_dispid, name)) != NULL) {
				FUNC17(name, 0);
				continue;
			}

			/* add the mappings */
			FUNC2(&tmp2, name);
			pid = FUNC13(disp->dispid_to_name);
			FUNC9(disp->dispid_to_name, pid, &tmp2);

			FUNC1(&tmp2, pid);
			FUNC14(disp->name_to_dispid, name, &tmp2);

			FUNC17(name, 0);
		}
	}
}