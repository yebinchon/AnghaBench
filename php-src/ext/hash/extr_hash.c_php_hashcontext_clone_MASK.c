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
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_12__ {TYPE_5__* ops; scalar_t__ key; int /*<<< orphan*/ * context; int /*<<< orphan*/  options; } ;
typedef  TYPE_2__ php_hashcontext_object ;
struct TYPE_13__ {scalar_t__ (* hash_copy ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  block_size; int /*<<< orphan*/  (* hash_init ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  context_size; } ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static zend_object *FUNC9(zend_object *zobj) {
	php_hashcontext_object *oldobj = FUNC5(zobj);
	zend_object *znew = FUNC4(zobj->ce);
	php_hashcontext_object *newobj = FUNC5(znew);

	FUNC8(znew, zobj);

	newobj->ops = oldobj->ops;
	newobj->options = oldobj->options;
	newobj->context = FUNC2(newobj->ops->context_size);
	newobj->ops->hash_init(newobj->context);

	if (SUCCESS != newobj->ops->hash_copy(newobj->ops, oldobj->context, newobj->context)) {
		FUNC1(newobj->context);
		newobj->context = NULL;
		return znew;
	}

	newobj->key = FUNC0(1, newobj->ops->block_size);
	if (oldobj->key) {
		FUNC3(newobj->key, oldobj->key, newobj->ops->block_size);
	}

	return znew;
}