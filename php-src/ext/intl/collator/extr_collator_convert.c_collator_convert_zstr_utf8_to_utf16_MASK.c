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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

zval* FUNC8( zval* utf8_zval, zval *rv )
{
	zval* zstr        = NULL;
	UChar* ustr       = NULL;
	int32_t ustr_len   = 0;
	UErrorCode status = U_ZERO_ERROR;

	/* Convert the string to UTF-16. */
	FUNC6(
			&ustr, &ustr_len,
			FUNC4( utf8_zval ), FUNC3( utf8_zval ),
			&status );
	if( FUNC1( status ) )
		FUNC7( E_WARNING, "Error casting object to string in collator_convert_zstr_utf8_to_utf16()" );

	/* Set string. */
	zstr = rv;
	FUNC2( zstr, (char*)ustr, FUNC0(ustr_len));
	//???
	FUNC5((char *)ustr);

	return zstr;
}