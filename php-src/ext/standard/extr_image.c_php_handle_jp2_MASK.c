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
struct gfxinfo {int dummy; } ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  box_type ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct gfxinfo* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gfxinfo *FUNC6(php_stream *stream)
{
	struct gfxinfo *result = NULL;
	unsigned int box_length;
	unsigned int box_type;
	char jp2c_box_id[] = {(char)0x6a, (char)0x70, (char)0x32, (char)0x63};

	/* JP2 is a wrapper format for JPEG 2000. Data is contained within "boxes".
	   Boxes themselves can be contained within "super-boxes". Super-Boxes can
	   contain super-boxes which provides us with a hierarchical storage system.

	   It is valid for a JP2 file to contain multiple individual codestreams.
	   We'll just look for the first codestream at the root of the box structure
	   and handle that.
	*/

	for (;;)
	{
		box_length = FUNC3(stream); /* LBox */
		/* TBox */
		if (FUNC4(stream, (void *)&box_type, sizeof(box_type)) != sizeof(box_type)) {
			/* Use this as a general "out of stream" error */
			break;
		}

		if (box_length == 1) {
			/* We won't handle XLBoxes */
			return NULL;
		}

		if (!FUNC0(&box_type, jp2c_box_id, 4))
		{
			/* Skip the first 3 bytes to emulate the file type examination */
			FUNC5(stream, 3, SEEK_CUR);

			result = FUNC2(stream);
			break;
		}

		/* Stop if this was the last box */
		if ((int)box_length <= 0) {
			break;
		}

		/* Skip over LBox (Which includes both TBox and LBox itself */
		if (FUNC5(stream, box_length - 8, SEEK_CUR)) {
			break;
		}
	}

	if (result == NULL) {
		FUNC1(NULL, E_WARNING, "JP2 file has no codestreams at root level");
	}

	return result;
}