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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/ * Transliterator_ce_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fake_scope ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static zval *FUNC7( zend_object *object, zend_string *name, zval *value,
	void **cache_slot )
{
	zend_class_entry *scope;

	if (FUNC0(fake_scope)) {
		scope = FUNC0(fake_scope);
	} else {
		scope = FUNC5();
	}
	if( ( scope != Transliterator_ce_ptr ) &&
		( FUNC4( "id", sizeof( "id" ) - 1,
		FUNC2( name ), FUNC1( name ) ) == 0 ) )
	{
		FUNC3(NULL, E_WARNING, "The property \"id\" is read-only" );
	}
	else
	{
		value = FUNC6( object, name, value, cache_slot );
	}

	return value;
}