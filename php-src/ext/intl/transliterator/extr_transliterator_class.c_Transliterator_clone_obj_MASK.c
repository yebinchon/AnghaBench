#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_17__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  UTransliterator ;
struct TYPE_18__ {int /*<<< orphan*/ * utrans; int /*<<< orphan*/  zo; } ;
typedef  TYPE_2__ Transliterator_object ;
struct TYPE_16__ {TYPE_1__* (* create_object ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_10__* Transliterator_ce_ptr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC13 (TYPE_1__*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_object *FUNC21( zend_object *object )
{
	Transliterator_object *to_orig,
	                      *to_new;
	zend_object 		  *ret_val;
	FUNC9( NULL );

	to_orig = FUNC13( object );
	FUNC9( FUNC1( to_orig ) );
	ret_val = Transliterator_ce_ptr->create_object( object->ce );
	to_new  = FUNC13( ret_val );

	FUNC18( &to_new->zo, &to_orig->zo );

	if( to_orig->utrans != NULL )
	{
		zval			tempz; /* dummy zval to pass to transliterator_object_construct */

		/* guaranteed to return NULL if it fails */
		UTransliterator *utrans = FUNC17( to_orig->utrans, FUNC3( to_orig ) );

		if( FUNC5( FUNC2( to_orig ) ) )
			goto err;

		FUNC7(&tempz, ret_val);
		FUNC15( &tempz, utrans,
			FUNC3( to_orig ) );

		if( FUNC5( FUNC2( to_orig ) ) )
		{
			zend_string *err_msg;
err:

			if( utrans != NULL )
				FUNC16( to_new );

			/* set the error anyway, in case in the future we decide not to
			 * throw an error. It also helps build the error message */
			FUNC10( NULL, FUNC0( to_orig ) );
			FUNC11( FUNC4( to_orig ),
				"Could not clone transliterator", 0 );

			err_msg = FUNC8( FUNC4( to_orig ) );
			FUNC20( NULL, "%s", FUNC6(err_msg) );
			FUNC19( err_msg ); /* if it's changed into a warning */
			/* do not destroy tempz; we need to return something */
		}
	}
	else
	{
		/* We shouldn't have unconstructed objects in the first place */
		FUNC12( NULL, E_WARNING,
			"Cloning unconstructed transliterator." );
	}

	return ret_val;
}