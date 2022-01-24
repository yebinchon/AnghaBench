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
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static inline void FUNC4(char *header_bag, char *lc_header_bag,
		const char *lc_header_name)
{
	char *lc_header_start = FUNC3(lc_header_bag, lc_header_name);
	if (lc_header_start
	&& (lc_header_start == lc_header_bag || *(lc_header_start-1) == '\n')
	) {
		char *header_start = header_bag + (lc_header_start - lc_header_bag);
		char *lc_eol = FUNC1(lc_header_start, '\n');

		if (lc_eol) {
			char *eol = header_start + (lc_eol - lc_header_start);
			size_t eollen = FUNC2(lc_eol);

			FUNC0(lc_header_start, lc_eol+1, eollen);
			FUNC0(header_start, eol+1, eollen);
		} else {
			*lc_header_start = '\0';
			*header_start = '\0';
		}
	}
}