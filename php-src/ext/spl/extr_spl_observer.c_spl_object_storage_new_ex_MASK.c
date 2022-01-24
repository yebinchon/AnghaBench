#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_22__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_2__ zend_object ;
struct TYPE_23__ {struct TYPE_23__* parent; int /*<<< orphan*/  function_table; } ;
typedef  TYPE_3__ zend_class_entry ;
struct TYPE_24__ {TYPE_2__ std; TYPE_8__* fptr_get_hash; int /*<<< orphan*/  storage; scalar_t__ pos; } ;
typedef  TYPE_4__ spl_SplObjectStorage ;
struct TYPE_21__ {TYPE_3__* scope; } ;
struct TYPE_25__ {TYPE_1__ common; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* spl_ce_SplObjectStorage ; 
 int /*<<< orphan*/  spl_handler_SplObjectStorage ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  spl_object_storage_dtor ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static zend_object *FUNC9(zend_class_entry *class_type, zend_object *orig) /* {{{ */
{
	spl_SplObjectStorage *intern;
	zend_class_entry *parent = class_type;

	intern = FUNC0(sizeof(spl_SplObjectStorage) + FUNC7(parent));
	FUNC1(intern, 0, sizeof(spl_SplObjectStorage) - sizeof(zval));
	intern->pos = 0;

	FUNC8(&intern->std, class_type);
	FUNC2(&intern->std, class_type);

	FUNC5(&intern->storage, 0, NULL, spl_object_storage_dtor, 0);

	intern->std.handlers = &spl_handler_SplObjectStorage;

	while (parent) {
		if (parent == spl_ce_SplObjectStorage) {
			if (class_type != spl_ce_SplObjectStorage) {
				intern->fptr_get_hash = FUNC6(&class_type->function_table, "gethash", sizeof("gethash") - 1);
				if (intern->fptr_get_hash->common.scope == spl_ce_SplObjectStorage) {
					intern->fptr_get_hash = NULL;
				}
			}
			break;
		}

		parent = parent->parent;
	}

	if (orig) {
		spl_SplObjectStorage *other = FUNC4(orig);
		FUNC3(intern, other);
	}

	return &intern->std;
}