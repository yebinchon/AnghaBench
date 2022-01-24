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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ HASH_KEY_IS_STRING ; 
 scalar_t__ IS_INDIRECT ; 
 scalar_t__ IS_UNDEF ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(spl_array_object *intern, HashTable *aht) /* {{{ */
{
	zend_string *string_key;
	zend_ulong num_key;
	zval *data;

	if (FUNC5(intern)) {
		uint32_t *pos_ptr = FUNC4(aht, intern);

		do {
			if (FUNC7(aht, &string_key, &num_key, pos_ptr) == HASH_KEY_IS_STRING) {
				data = FUNC6(aht, pos_ptr);
				if (data && FUNC3(data) == IS_INDIRECT &&
				    FUNC3(data = FUNC2(data)) == IS_UNDEF) {
					/* skip */
				} else if (!FUNC0(string_key) || FUNC1(string_key)[0]) {
					return SUCCESS;
				}
			} else {
				return SUCCESS;
			}
			if (FUNC8(aht, pos_ptr) != SUCCESS) {
				return FAILURE;
			}
			FUNC9(aht, pos_ptr);
		} while (1);
	}
	return FAILURE;
}