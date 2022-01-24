#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_long ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  UTransliterator ;
typedef  int /*<<< orphan*/  UTransDirection ;
struct TYPE_3__ {int member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ UParseError ;
typedef  char UChar ;
typedef  int /*<<< orphan*/  Transliterator_object ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRANSLITERATOR_FORWARD ; 
 int /*<<< orphan*/  TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK ; 
 scalar_t__ TRANSLITERATOR_REVERSE ; 
 int /*<<< orphan*/  Transliterator_ce_ptr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ILLEGAL_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14( char *str_id, size_t str_id_len, zend_long direction, zval *object )
{
	Transliterator_object *to;
	UChar	              *ustr_id    = NULL;
	int32_t               ustr_id_len = 0;
	UTransliterator       *utrans;
	UParseError           parse_error   = {0, -1};

	FUNC5( NULL );

	if( ( direction != TRANSLITERATOR_FORWARD ) && (direction != TRANSLITERATOR_REVERSE ) )
	{
		FUNC6( NULL, U_ILLEGAL_ARGUMENT_ERROR,
			"transliterator_create: invalid direction", 0 );
		return FAILURE;
	}

	FUNC9( object, Transliterator_ce_ptr );
	TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK; /* fetch zend object from zval "object" into "to" */

	/* Convert transliterator id to UTF-16 */
	FUNC4( &ustr_id, &ustr_id_len, str_id, str_id_len, FUNC1( to ) );
	if( FUNC2( FUNC0( to ) ) )
	{
		FUNC7( NULL, FUNC0( to ) );
		FUNC8( NULL, "String conversion of id to UTF-16 failed", 0 );
		FUNC13( object );
		return FAILURE;
	}

	/* Open ICU Transliterator. */
	utrans = FUNC12( ustr_id, ustr_id_len, (UTransDirection ) direction,
		NULL, -1, &parse_error, FUNC1( to ) );
	if (ustr_id) {
		FUNC3( ustr_id );
	}

	if( FUNC2( FUNC0( to ) ) )
	{
		char *buf = NULL;
		FUNC7( NULL, FUNC0( to ) );
		FUNC10( &buf, 0, "transliterator_create: unable to open ICU transliterator"
			" with id \"%s\"", str_id );
		if( buf == NULL ) {
			FUNC8( NULL,
				"transliterator_create: unable to open ICU transliterator", 0 );
		}
		else
		{
			FUNC8( NULL, buf, /* copy message */ 1 );
			FUNC3( buf );
		}
		FUNC13( object );
		return FAILURE;
	}

	FUNC11( object, utrans, FUNC1( to ) );
	/* no need to close the transliterator manually on construction error */
	if( FUNC2( FUNC0( to ) ) )
	{
		FUNC7( NULL, FUNC0( to ) );
		FUNC8( NULL,
			"transliterator_create: internal constructor call failed", 0 );
		FUNC13( object );
		return FAILURE;
	}

	return SUCCESS;
}