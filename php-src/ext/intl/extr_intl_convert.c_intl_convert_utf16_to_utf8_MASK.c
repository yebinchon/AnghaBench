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
typedef  int /*<<< orphan*/  zend_string ;
typedef  size_t int32_t ;
typedef  scalar_t__ UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ; 
 scalar_t__ U_ZERO_ERROR ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t,size_t*,int /*<<< orphan*/  const*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

zend_string* FUNC5(
	const UChar* src,    int32_t  src_len,
	UErrorCode*  status )
{
	zend_string* dst;
	int32_t      dst_len;

	/* Determine required destination buffer size (pre-flighting). */
	*status = U_ZERO_ERROR;
	FUNC2( NULL, 0, &dst_len, src, src_len, status );

	/* Bail out if an unexpected error occurred.
	 * (U_BUFFER_OVERFLOW_ERROR means that *target buffer is not large enough).
	 * (U_STRING_NOT_TERMINATED_WARNING usually means that the input string is empty).
	 */
	if( *status != U_BUFFER_OVERFLOW_ERROR && *status != U_STRING_NOT_TERMINATED_WARNING )
		return NULL;

	/* Allocate memory for the destination buffer (it will be zero-terminated). */
	dst = FUNC3(dst_len, 0);

	/* Convert source string from UTF-8 to UTF-16. */
	*status = U_ZERO_ERROR;
	FUNC2( FUNC1(dst), dst_len, NULL, src, src_len, status );
	if( FUNC0( *status ) )
	{
		FUNC4(dst);
		return NULL;
	}

	/* U_STRING_NOT_TERMINATED_WARNING is OK for us => reset 'status'. */
	*status = U_ZERO_ERROR;

	FUNC1(dst)[dst_len] = 0;
	return dst;
}