#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int s; int S; int c; int C; int t; int r; } ;
struct TYPE_11__ {int vContSupported; TYPE_1__ vcont; } ;
struct TYPE_12__ {size_t data_len; char* data; TYPE_2__ stub_features; } ;
typedef  TYPE_3__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 

int FUNC7(libgdbr_t *g) {
	int ret = -1;
	char *ptr = NULL;

	if (!g) {
		return -1;
	}

	if (!FUNC0 (g)) {
		goto end;
	}
	if (FUNC4 (g, "vCont?") < 0 || FUNC2 (g, false) < 0 || FUNC3 (g) < 0) {
		ret = -1;
		goto end;
	}
	if (g->data_len == 0) {
		g->stub_features.vContSupported = false;
		ret = 0;
		goto end;
	}
	g->data[g->data_len] = '\0';
	if (!(ptr = FUNC6 (g->data + FUNC5 ("vCont;"), ";"))) {
		ret = 0;
		goto end;
	}
	while (ptr) {
		switch (*ptr) {
		case 's':
			g->stub_features.vcont.s = true;
			break;
		case 'S':
			g->stub_features.vcont.S = true;
			break;
		case 'c':
			g->stub_features.vcont.c = true;
			break;
		case 'C':
			g->stub_features.vcont.C = true;
			break;
		case 't':
			g->stub_features.vcont.t = true;
			break;
		case 'r':
			g->stub_features.vcont.r = true;
			break;
		}
		g->stub_features.vContSupported = true;
		ptr = FUNC6 (NULL, ";");
	}

	ret = 0;
end:
	FUNC1 (g);
	return ret;
}