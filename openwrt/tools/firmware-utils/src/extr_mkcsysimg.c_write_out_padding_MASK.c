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
typedef  int /*<<< orphan*/  uint8_t ;
struct csum_state {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,struct csum_state*) ; 

int
FUNC2(FILE *outfile, size_t len, uint8_t padc,
		 struct csum_state *css)
{
	uint8_t buf[512];
	size_t buflen = sizeof(buf);
	int err;

	FUNC0(buf, padc, buflen);
	while (len > 0) {
		if (len < buflen)
			buflen = len;

		err = FUNC1(outfile, buf, buflen, css);
		if (err)
			return err;

		len -= buflen;
	}

	return 0;
}