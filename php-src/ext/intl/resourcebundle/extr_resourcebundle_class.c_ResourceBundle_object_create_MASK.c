#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_9__ {TYPE_1__ zend; int /*<<< orphan*/ * child; int /*<<< orphan*/ * me; } ;
typedef  TYPE_2__ ResourceBundle_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ResourceBundle_object_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC5( zend_class_entry *ce )
{
	ResourceBundle_object *rb;

	rb = FUNC3(sizeof(ResourceBundle_object), ce);

	FUNC4( &rb->zend, ce );
	FUNC2( &rb->zend, ce);

	FUNC1( FUNC0(rb) );
	rb->me = NULL;
	rb->child = NULL;

	rb->zend.handlers = &ResourceBundle_object_handlers;

	return &rb->zend;
}