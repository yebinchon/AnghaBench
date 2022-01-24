#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
struct TYPE_2__ {char* root; int /*<<< orphan*/  out; scalar_t__ encode; } ;
typedef  TYPE_1__ ForeachListUser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(void *user, const char *k, const char *v) {
	ForeachListUser *rlu = user;
	char *line, *root;
	int rlen, klen, vlen;
	ut8 *v2 = NULL;
	if (!rlu) {
		return 0;
	}
	root = rlu->root;
	klen = FUNC5 (k);
	if (rlu->encode) {
		v2 = FUNC3 (v, NULL);
		if (v2) {
			v = (const char *)v2;
		}
	}
	vlen = FUNC5 (v);
	if (root) {
		rlen = FUNC5 (root);
		line = FUNC1 (klen + vlen + rlen + 3);
		if (!line) {
			FUNC0 (v2);
			return 0;
		}
		FUNC2 (line, root, rlen);
		line[rlen]='/'; /*append the '/' at the end of the namespace */
		FUNC2 (line + rlen + 1, k, klen);
		line[rlen + klen + 1] = '=';
		FUNC2 (line + rlen + klen + 2, v, vlen + 1);
	} else {
		line = FUNC1 (klen + vlen + 2);
		if (!line) {
			FUNC0 (v2);
			return 0;
		}
		FUNC2 (line, k, klen);
		line[klen] = '=';
		FUNC2 (line + klen + 1, v, vlen + 1);
	}
	FUNC4 (rlu->out, line, 1);
	FUNC0 (v2);
	FUNC0 (line);
	return 1;
}