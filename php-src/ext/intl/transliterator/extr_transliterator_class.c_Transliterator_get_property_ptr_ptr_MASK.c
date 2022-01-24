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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void**) ; 

__attribute__((used)) static zval *FUNC4( zend_object *object, zend_string *name, int type, void **cache_slot )
{
	zval *retval;

	if(FUNC2( "id", sizeof( "id" ) - 1,
		FUNC1( name ), FUNC0( name ) ) == 0 )
	{
		retval = NULL; /* fallback to read_property */
	}
	else
	{
		retval = FUNC3( object, name, type, cache_slot );
	}

	return retval;
}