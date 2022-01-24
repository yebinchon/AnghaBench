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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/  zend; scalar_t__ child; scalar_t__ me; } ;
typedef  TYPE_1__ ResourceBundle_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( zend_object *object )
{
	ResourceBundle_object *rb = FUNC2(object);

	// only free local errors
	FUNC1( FUNC0(rb) );

	if (rb->me) {
		FUNC3( rb->me );
	}
	if (rb->child) {
		FUNC3( rb->child );
	}

	FUNC4( &rb->zend );
}