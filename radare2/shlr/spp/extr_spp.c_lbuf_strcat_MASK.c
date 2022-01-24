#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* lbuf; int lbuf_n; int lbuf_s; } ;
typedef  TYPE_1__ SppBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char*) ; 

void FUNC4(SppBuf *dst, char *src) {
	int len = FUNC3 (src);
	char *nbuf;
	if (!dst->lbuf || (len + dst->lbuf_n) > dst->lbuf_s) {
		nbuf = FUNC2 (dst->lbuf, dst->lbuf_s << 1);
		if (!nbuf) {
			FUNC0 (stderr, "Out of memory.\n");
			return;
		}
		dst->lbuf = nbuf;
	}
	FUNC1 (dst->lbuf + dst->lbuf_n, src, len + 1);
	dst->lbuf_n += len;
}