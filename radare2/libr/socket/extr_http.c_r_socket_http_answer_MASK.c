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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RSocket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (char*,char*) ; 

__attribute__((used)) static char *FUNC10 (RSocket *s, int *code, int *rlen) {
	FUNC6 (s, NULL);
	const char *p;
	int ret, len = 0, bufsz = 32768, delta = 0;
	char *dn, *buf = FUNC2 (1, bufsz + 32); // XXX: use r_buffer here
	if (!buf) {
		return NULL;
	}
	char *res = NULL;
	int olen = FUNC0 (s, (ut8*)buf, bufsz);
	if ((dn = (char*)FUNC9 (buf, "\n\n"))) {
		delta += 2;
	} else if ((dn = (char*)FUNC9 (buf, "\r\n\r\n"))) {
		delta += 4;
	} else {
		goto fail;
	}

	olen -= delta;
	*dn = 0; // chop headers
	/* Parse Len */
	p = FUNC9 (buf, "Content-Length: ");
	if (p) {
		len = FUNC1 (p + 16);
	} else {
		len = olen - (dn - buf);
	}
	if (len > 0) {
		if (len > olen) {
			res = FUNC4 (len + 2);
			FUNC5 (res, dn + delta, olen);
			do {
				ret = FUNC8 (s, (ut8*) res + olen, len - olen);
				if (ret < 1) {
					break;
				}
				olen += ret;
			} while (olen < len);
			res[len] = 0;
		} else {
			res = FUNC4 (len + 1);
			if (res) {
				FUNC5 (res, dn + delta, len);
				res[len] = 0;
			}
		}
	} else {
		res = NULL;
	}
fail:
	FUNC3 (buf);
// is 's' free'd? isn't this going to cause a double free?
	FUNC7 (s);
	if (rlen) {
		*rlen = len;
	}
	return res;
}