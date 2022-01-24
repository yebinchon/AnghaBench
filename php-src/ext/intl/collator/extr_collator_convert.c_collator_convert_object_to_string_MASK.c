#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;
struct TYPE_2__ {scalar_t__ (* cast_object ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/  IS_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

zval* FUNC15( zval* obj, zval *rv )
{
	zval* zstr        = NULL;
	UErrorCode status = U_ZERO_ERROR;
	UChar* ustr       = NULL;
	int32_t ustr_len  = 0;

	/* Bail out if it's not an object. */
	if( FUNC8( obj ) != IS_OBJECT )
	{
		FUNC0( obj );
	}

	/* Try object's handlers. */
	if( FUNC4(obj)->cast_object )
	{
		zstr = rv;

		if( FUNC4(obj)->cast_object( FUNC5(obj), zstr, IS_STRING ) == FAILURE )
		{
			/* cast_object failed => bail out. */
			FUNC13( zstr );
			FUNC0( obj );
		}
	}

	/* Object wasn't successfully converted => bail out. */
	if( zstr == NULL )
	{
		FUNC0( obj );
	}

	/* Convert the string to UTF-16. */
	FUNC10(
			&ustr, &ustr_len,
			FUNC7( zstr ), FUNC6( zstr ),
			&status );
	if( FUNC2( status ) )
		FUNC11( E_WARNING, "Error casting object to string in collator_convert_object_to_string()" );

	/* Cleanup zstr to hold utf16 string. */
	FUNC14( zstr );

	/* Set string. */
	FUNC3( zstr, (char*)ustr, FUNC1(ustr_len));
	//???
	FUNC9((char *)ustr);

	/* Don't free ustr cause it's set in zstr without copy.
	 * efree( ustr );
	 */

	return zstr;
}