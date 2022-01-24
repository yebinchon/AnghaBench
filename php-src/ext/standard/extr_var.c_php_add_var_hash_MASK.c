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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_ulong ;
typedef  scalar_t__ zend_uintptr_t ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  scalar_t__ zend_bool ;
typedef  TYPE_1__* php_serialize_data_t ;
struct TYPE_3__ {int n; int /*<<< orphan*/  ht; } ;

/* Variables and functions */
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline zend_long FUNC9(php_serialize_data_t data, zval *var) /* {{{ */
{
	zval *zv;
	zend_ulong key;
	zend_bool is_ref = FUNC3(var);

	data->n += 1;

	if (!is_ref && FUNC6(var) != IS_OBJECT) {
		return 0;
	}

	/* References to objects are treated as if the reference didn't exist */
	if (is_ref && FUNC6(FUNC5(var)) == IS_OBJECT) {
		var = FUNC5(var);
	}

	/* Index for the variable is stored using the numeric value of the pointer to
	 * the zend_refcounted struct */
	key = (zend_ulong) (zend_uintptr_t) FUNC2(var);
	zv = FUNC8(&data->ht, key);

	if (zv) {
		/* References are only counted once, undo the data->n increment above */
		if (is_ref) {
			data->n -= 1;
		}

		return FUNC4(zv);
	} else {
		zval zv_n;
		FUNC0(&zv_n, data->n);
		FUNC7(&data->ht, key, &zv_n);

		/* Additionally to the index, we also store the variable, to ensure that it is
		 * not destroyed during serialization and its pointer reused. The variable is
		 * stored at the numeric value of the pointer + 1, which cannot be the location
		 * of another zend_refcounted structure. */
		FUNC7(&data->ht, key + 1, var);
		FUNC1(var);

		return 0;
	}
}