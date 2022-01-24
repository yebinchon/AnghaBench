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

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zval *result, zval *op1, zval *op2)
{
	zval num1, num2;
	zval *num1_p = NULL;
	zval *num2_p = NULL;

	if( FUNC1(op1) == IS_STRING )
	{
		num1_p = FUNC2( op1, &num1 );
		op1 = num1_p;
	}

	if( FUNC1(op2) == IS_STRING )
	{
		num2_p = FUNC2( op2, &num2 );
		op2 = num2_p;
	}

	FUNC0(result, FUNC3(op1, op2));

	if( num1_p )
		FUNC4( num1_p );
	if( num2_p )
		FUNC4( num2_p );

	return SUCCESS;
}