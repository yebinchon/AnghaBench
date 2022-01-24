#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ zend_hash_key ;
struct TYPE_8__ {int /*<<< orphan*/  ce; } ;
struct TYPE_7__ {scalar_t__ fptr_get_hash; TYPE_3__ std; } ;
typedef  TYPE_2__ spl_SplObjectStorage ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(zend_hash_key *key, spl_SplObjectStorage *intern, zval *obj) {
	if (intern->fptr_get_hash) {
		zval rv;
		FUNC4(
			&intern->std, intern->std.ce, &intern->fptr_get_hash, "getHash", &rv, obj);
		if (!FUNC0(rv)) {
			if (FUNC3(rv) == IS_STRING) {
				key->key = FUNC2(rv);
				return SUCCESS;
			} else {
				FUNC5(spl_ce_RuntimeException, "Hash needs to be a string", 0);

				FUNC6(&rv);
				return FAILURE;
			}
		} else {
			return FAILURE;
		}
	} else {
		key->key = NULL;
		key->h = FUNC1(obj);
		return SUCCESS;
	}
}