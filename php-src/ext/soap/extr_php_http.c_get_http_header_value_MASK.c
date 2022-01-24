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

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC4(char *headers, char *type)
{
	char *pos, *tmp = NULL;
	int typelen, headerslen;

	typelen = FUNC2(type);
	headerslen = FUNC2(headers);

	/* header `titles' can be lower case, or any case combination, according
	 * to the various RFC's. */
	pos = headers;
	do {
		/* start of buffer or start of line */
		if (FUNC3(pos, type, typelen) == 0) {
			char *eol;

			/* match */
			tmp = pos + typelen;
			eol = FUNC1(tmp, '\n');
			if (eol == NULL) {
				eol = headers + headerslen;
			} else if (eol > tmp && *(eol-1) == '\r') {
				eol--;
			}
			return FUNC0(tmp, eol - tmp);
		}

		/* find next line */
		pos = FUNC1(pos, '\n');
		if (pos) {
			pos++;
		}

	} while (pos);

	return NULL;
}