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
struct TYPE_3__ {char** b; size_t y; int x; int* blen; int* bsize; } ;
typedef  TYPE_1__ RConsCanvas ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*,int) ; 

__attribute__((used)) static bool FUNC7(RConsCanvas *c, int real_len, int utf8_len) {
	if (real_len == 0) {
		return true;
	}
	int buf_utf8_len = FUNC1 (c->b[c->y] + c->x, utf8_len, c->blen[c->y] - c->x);
	int goback = FUNC0 (0, (buf_utf8_len - utf8_len));
	int padding = (real_len - utf8_len) - goback;

	if (padding) {
		if (padding > 0 && c->blen[c->y] + padding > c->bsize[c->y]) {
			int newsize = FUNC0 (c->bsize[c->y] * 1.5, c->blen[c->y] + padding);
			char * newline = FUNC6 (c->b[c->y], sizeof (*c->b[c->y])*(newsize));
			if (!newline) {
				return false;
			}
			FUNC5 (newline + c->bsize[c->y], 0, newsize - c->bsize[c->y]);
			c->b[c->y] = newline;
			c->bsize[c->y] = newsize;
		}
		int size = FUNC0 (c->blen[c->y] - c->x - goback, 0);
		char *start = c->b[c->y] + c->x + goback;
		char *tmp = FUNC3 (size);
		if (!tmp) {
			return false;
		}
		FUNC4 (tmp, start, size);
		if (padding < 0) {
			int lap = FUNC0 (0, c->b[c->y] - (start + padding));
			FUNC4 (start + padding + lap,  tmp + lap, size - lap);
			FUNC2 (tmp);
			c->blen[c->y] += padding;
			return true;
		}
		FUNC4 (start + padding, tmp, size);
		FUNC2 (tmp);
		c->blen[c->y] += padding;
	}
	return true;
}