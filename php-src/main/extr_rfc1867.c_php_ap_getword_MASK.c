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
typedef  int /*<<< orphan*/  zend_encoding ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(const zend_encoding *encoding, char **line, char stop)
{
	char *pos = *line, quote;
	char *res;

	while (*pos && *pos != stop) {
		if ((quote = *pos) == '"' || quote == '\'') {
			++pos;
			while (*pos && *pos != quote) {
				if (*pos == '\\' && pos[1] && pos[1] == quote) {
					pos += 2;
				} else {
					++pos;
				}
			}
			if (*pos) {
				++pos;
			}
		} else ++pos;
	}
	if (*pos == '\0') {
		res = FUNC0(*line);
		*line += FUNC2(*line);
		return res;
	}

	res = FUNC1(*line, pos - *line);

	while (*pos == stop) {
		++pos;
	}

	*line = pos;
	return res;
}