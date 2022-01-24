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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int /*<<< orphan*/  UBreakIterator ;

/* Variables and functions */
 int UBRK_DONE ; 
 int U_BRK_SAFECLONE_BUFFERSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

int32_t FUNC5(const UChar *text, int32_t text_length, int boundary_array[], int boundary_array_len )
{
	unsigned char u_break_iterator_buffer[U_BRK_SAFECLONE_BUFFERSIZE];
	UErrorCode		status = U_ZERO_ERROR;
	int ret_len, pos;
	UBreakIterator* bi;

	bi = FUNC1((void*)u_break_iterator_buffer, &status );

	if( FUNC0(status) ) {
		return -1;
	}

	FUNC4(bi, text, text_length,	&status);

	pos = 0;

	for ( ret_len = 0; pos != UBRK_DONE; ) {

		pos = FUNC3(bi);

		if ( pos != UBRK_DONE ) {

			if ( NULL != boundary_array && ret_len < boundary_array_len ) {
				boundary_array[ret_len] = pos;
			}

			ret_len++;
		}
	}

	FUNC2(bi);

	return ret_len;
}