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
struct TYPE_6__ {int /*<<< orphan*/  get_iterator; int /*<<< orphan*/  create_object; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int /*<<< orphan*/  count_elements; int /*<<< orphan*/  read_dimension; int /*<<< orphan*/  free_obj; int /*<<< orphan*/ * clone_obj; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ResourceBundle_ce_ptr ; 
 int /*<<< orphan*/  ResourceBundle_class_functions ; 
 int /*<<< orphan*/  ResourceBundle_object ; 
 int /*<<< orphan*/  ResourceBundle_object_create ; 
 int /*<<< orphan*/  ResourceBundle_object_free ; 
 TYPE_3__ ResourceBundle_object_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resourcebundle_array_count ; 
 int /*<<< orphan*/  resourcebundle_array_get ; 
 int /*<<< orphan*/  resourcebundle_get_iterator ; 
 TYPE_3__ std_object_handlers ; 
 int /*<<< orphan*/  zend ; 
 int /*<<< orphan*/  zend_ce_countable ; 
 int /*<<< orphan*/  zend_ce_traversable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4( void )
{
	zend_class_entry ce;

	FUNC0( ce, "ResourceBundle", ResourceBundle_class_functions );

	ce.create_object = ResourceBundle_object_create;
	ce.get_iterator = resourcebundle_get_iterator;

	ResourceBundle_ce_ptr = FUNC3( &ce );

	ResourceBundle_object_handlers = std_object_handlers;
	ResourceBundle_object_handlers.offset = FUNC1(ResourceBundle_object, zend);
	ResourceBundle_object_handlers.clone_obj	  = NULL; /* ICU ResourceBundle has no clone implementation */
	ResourceBundle_object_handlers.free_obj = ResourceBundle_object_free;
	ResourceBundle_object_handlers.read_dimension = resourcebundle_array_get;
	ResourceBundle_object_handlers.count_elements = resourcebundle_array_count;

	FUNC2(ResourceBundle_ce_ptr, 2, zend_ce_traversable, zend_ce_countable);
}