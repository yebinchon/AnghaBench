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
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IS_DOUBLE ; 
 int IS_LONG ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*,int) ; 

zval* FUNC8( zval* str, zval *rv )
{
	int is_numeric = 0;
	zend_long lval      = 0;
	double dval    = 0;

	if( FUNC6( str ) != IS_STRING )
	{
		FUNC0( str );
	}

	if( ( is_numeric = FUNC7( (UChar*) FUNC5(str), FUNC1( FUNC4(str) ), &lval, &dval, 1 ) ) )
	{
		if( is_numeric == IS_LONG ) {
			FUNC3(rv, lval);
		}
		if( is_numeric == IS_DOUBLE )
			FUNC2(rv, dval);
	}
	else
	{
		FUNC0( str );
	}

	return rv;
}