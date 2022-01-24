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
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

zval* FUNC7( zval* utf16_zval, zval *rv )
{
	zend_string* u8str;
	UErrorCode status = U_ZERO_ERROR;

	/* Convert to utf8 then. */
	u8str = FUNC5(
		(UChar*) FUNC4(utf16_zval), FUNC0( FUNC3(utf16_zval) ), &status );
	if( !u8str ) {
		FUNC6( E_WARNING, "Error converting utf16 to utf8 in collator_convert_zval_utf16_to_utf8()" );
		FUNC1( rv );
	} else {
		FUNC2( rv, u8str );
	}
	return rv;
}