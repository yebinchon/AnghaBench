#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int len; char* data; } ;
struct TYPE_7__ {int line_buf_valid; int line_buf_converted; scalar_t__ copy_dest; int eol_type; TYPE_2__ line_buf; int /*<<< orphan*/  file_encoding; scalar_t__ need_transcoding; int /*<<< orphan*/  raw_buf_len; int /*<<< orphan*/  raw_buf_index; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COPY_NEW_FE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
#define  EOL_CR 131 
#define  EOL_CRNL 130 
#define  EOL_NL 129 
#define  EOL_UNKNOWN 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool
FUNC8(CopyState cstate)
{
	bool		result;

	FUNC6(&cstate->line_buf);
	cstate->line_buf_valid = true;

	/* Mark that encoding conversion hasn't occurred yet */
	cstate->line_buf_converted = false;

	/* Parse data and transfer into line_buf */
	result = FUNC2(cstate);

	if (result)
	{
		/*
		 * Reached EOF.  In protocol version 3, we should ignore anything
		 * after \. up to the protocol end of copy data.  (XXX maybe better
		 * not to treat \. as special?)
		 */
		if (cstate->copy_dest == COPY_NEW_FE)
		{
			do
			{
				cstate->raw_buf_index = cstate->raw_buf_len;
			} while (FUNC1(cstate));
		}
	}
	else
	{
		/*
		 * If we didn't hit EOF, then we must have transferred the EOL marker
		 * to line_buf along with the data.  Get rid of it.
		 */
		switch (cstate->eol_type)
		{
			case EOL_NL:
				FUNC0(cstate->line_buf.len >= 1);
				FUNC0(cstate->line_buf.data[cstate->line_buf.len - 1] == '\n');
				cstate->line_buf.len--;
				cstate->line_buf.data[cstate->line_buf.len] = '\0';
				break;
			case EOL_CR:
				FUNC0(cstate->line_buf.len >= 1);
				FUNC0(cstate->line_buf.data[cstate->line_buf.len - 1] == '\r');
				cstate->line_buf.len--;
				cstate->line_buf.data[cstate->line_buf.len] = '\0';
				break;
			case EOL_CRNL:
				FUNC0(cstate->line_buf.len >= 2);
				FUNC0(cstate->line_buf.data[cstate->line_buf.len - 2] == '\r');
				FUNC0(cstate->line_buf.data[cstate->line_buf.len - 1] == '\n');
				cstate->line_buf.len -= 2;
				cstate->line_buf.data[cstate->line_buf.len] = '\0';
				break;
			case EOL_UNKNOWN:
				/* shouldn't get here */
				FUNC0(false);
				break;
		}
	}

	/* Done reading the line.  Convert it to server encoding. */
	if (cstate->need_transcoding)
	{
		char	   *cvt;

		cvt = FUNC5(cstate->line_buf.data,
							   cstate->line_buf.len,
							   cstate->file_encoding);
		if (cvt != cstate->line_buf.data)
		{
			/* transfer converted data back to line_buf */
			FUNC6(&cstate->line_buf);
			FUNC3(&cstate->line_buf, cvt, FUNC7(cvt));
			FUNC4(cvt);
		}
	}

	/* Now it's safe to use the buffer in error messages */
	cstate->line_buf_converted = true;

	return result;
}