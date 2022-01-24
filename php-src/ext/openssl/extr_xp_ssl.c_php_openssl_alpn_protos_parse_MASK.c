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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static unsigned char *FUNC3(unsigned short *outlen, const char *in) /* {{{ */
{
	size_t len;
	unsigned char *out;
	size_t i, start = 0;

	len = FUNC2(in);
	if (len >= 65535) {
		return NULL;
	}

	out = FUNC1(FUNC2(in) + 1);

	for (i = 0; i <= len; ++i) {
		if (i == len || in[i] == ',') {
			if (i - start > 255) {
				FUNC0(out);
				return NULL;
			}
			out[start] = i - start;
			start = i + 1;
		} else {
			out[i + 1] = in[i];
		}
	}

	*outlen = len + 1;

	return out;
}