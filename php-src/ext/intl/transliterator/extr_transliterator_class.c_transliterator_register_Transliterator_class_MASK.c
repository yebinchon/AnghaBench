#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  create_object; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int /*<<< orphan*/  write_property; int /*<<< orphan*/  read_property; int /*<<< orphan*/  get_property_ptr_ptr; int /*<<< orphan*/  clone_obj; int /*<<< orphan*/  free_obj; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Transliterator_ce_ptr ; 
 int /*<<< orphan*/  Transliterator_class_functions ; 
 int /*<<< orphan*/  Transliterator_clone_obj ; 
 int /*<<< orphan*/  Transliterator_get_property_ptr_ptr ; 
 TYPE_3__ Transliterator_handlers ; 
 int /*<<< orphan*/  Transliterator_object ; 
 int /*<<< orphan*/  Transliterator_object_create ; 
 int /*<<< orphan*/  Transliterator_objects_free ; 
 int /*<<< orphan*/  Transliterator_read_property ; 
 int /*<<< orphan*/  Transliterator_write_property ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_ACC_PUBLIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  std_object_handlers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  zo ; 

void FUNC6( void )
{
	zend_class_entry ce;

	/* Create and register 'Transliterator' class. */
	FUNC0( ce, "Transliterator", Transliterator_class_functions );
	ce.create_object = Transliterator_object_create;
	Transliterator_ce_ptr = FUNC5( &ce );
	FUNC2( &Transliterator_handlers, &std_object_handlers,
		sizeof Transliterator_handlers );
	Transliterator_handlers.offset = FUNC1(Transliterator_object, zo);
	Transliterator_handlers.free_obj = Transliterator_objects_free;
	Transliterator_handlers.clone_obj = Transliterator_clone_obj;
	Transliterator_handlers.get_property_ptr_ptr = Transliterator_get_property_ptr_ptr;
	Transliterator_handlers.read_property = Transliterator_read_property;
	Transliterator_handlers.write_property = Transliterator_write_property;

	/* Declare 'Transliterator' class properties */
	if( !Transliterator_ce_ptr )
	{
		FUNC4( E_ERROR,
			"Transliterator: attempt to create properties "
			"on a non-registered class." );
		return;
	}
	FUNC3( Transliterator_ce_ptr,
		"id", sizeof( "id" ) - 1, ZEND_ACC_PUBLIC );

	/* constants are declared in transliterator_register_constants, called from MINIT */

}