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
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  E_WARNING ; 
 unsigned int M_EOI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(php_stream * stream, int last_marker, int ff_read)
{
	int a=0, marker;

	/* get marker byte, swallowing possible padding                           */
	if (!ff_read) {
		size_t extraneous = 0;

		while ((marker = FUNC1(stream)) != 0xff) {
			if (marker == EOF) {
				return M_EOI;/* we hit EOF */
	}
			extraneous++;
	}
		if (extraneous) {
			FUNC0(NULL, E_WARNING, "corrupt JPEG data: %zu extraneous bytes before marker", extraneous);
		}
	}
	a = 1;
	do {
		if ((marker = FUNC1(stream)) == EOF)
		{
			return M_EOI;/* we hit EOF */
		}
		a++;
	} while (marker == 0xff);
	if (a < 2)
	{
		return M_EOI; /* at least one 0xff is needed before marker code */
	}
	return (unsigned int)marker;
}