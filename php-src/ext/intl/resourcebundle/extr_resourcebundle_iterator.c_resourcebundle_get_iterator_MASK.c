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
typedef  int /*<<< orphan*/  zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_8__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int is_table; scalar_t__ i; int /*<<< orphan*/ * currentkey; int /*<<< orphan*/  current; int /*<<< orphan*/  length; TYPE_1__* subject; TYPE_3__ intern; } ;
struct TYPE_6__ {int /*<<< orphan*/  me; } ;
typedef  TYPE_1__ ResourceBundle_object ;
typedef  TYPE_2__ ResourceBundle_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ URES_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  resourcebundle_iterator_funcs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

zend_object_iterator *FUNC10( zend_class_entry *ce, zval *object, int byref )
{
	ResourceBundle_object   *rb = FUNC3(object );
	ResourceBundle_iterator *iterator = FUNC5( sizeof( ResourceBundle_iterator ) );

	if (byref) {
	     FUNC6( E_ERROR, "ResourceBundle does not support writable iterators" );
	}

	FUNC9(&iterator->intern);
	FUNC2(object);
	FUNC0(&iterator->intern.data, FUNC4(object));
	iterator->intern.funcs = &resourcebundle_iterator_funcs;

	iterator->subject = rb;

	/* The iterated rb can only be either URES_TABLE or URES_ARRAY
	 * All other types are returned as php primitives!
	 */
	iterator->is_table = (FUNC8( rb->me ) == URES_TABLE);
	iterator->length = FUNC7( rb->me );

	FUNC1(&iterator->current);
	iterator->currentkey = NULL;
	iterator->i = 0;

	return (zend_object_iterator *) iterator;
}