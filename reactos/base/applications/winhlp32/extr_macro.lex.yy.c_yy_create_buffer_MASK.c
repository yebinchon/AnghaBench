#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct yy_buffer_state {int dummy; } ;
typedef  TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_buf_size; char* yy_ch_buf; int yy_is_our_buffer; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

YY_BUFFER_STATE FUNC3  (FILE * file, int  size )
{
	YY_BUFFER_STATE b;
    
	b = (YY_BUFFER_STATE) FUNC2(sizeof( struct yy_buffer_state )  );
	if ( ! b )
		FUNC0( "out of dynamic memory in yy_create_buffer()" );

	b->yy_buf_size = size;

	/* yy_ch_buf has to be 2 characters longer than the size given because
	 * we need to put in 2 end-of-buffer characters.
	 */
	b->yy_ch_buf = (char *) FUNC2(b->yy_buf_size + 2  );
	if ( ! b->yy_ch_buf )
		FUNC0( "out of dynamic memory in yy_create_buffer()" );

	b->yy_is_our_buffer = 1;

	FUNC1(b,file );

	return b;
}