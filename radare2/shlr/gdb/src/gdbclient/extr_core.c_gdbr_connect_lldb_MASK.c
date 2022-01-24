#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int g; } ;
struct TYPE_13__ {TYPE_1__ lldb; scalar_t__ qXfer_features_read; } ;
struct TYPE_14__ {int data_len; char* data; TYPE_2__ stub_features; } ;
typedef  TYPE_3__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC7(libgdbr_t *g) {
	int ret = -1;
	if (!FUNC0 (g)) {
		goto end;
	}
	FUNC4 (g);
	if (g->stub_features.qXfer_features_read) {
		FUNC2 (g);
	}
	// Check if 'g' packet is supported
	if (FUNC6 (g, "g") < 0 || FUNC3 (g, false) < 0 || FUNC5 (g) < 0) {
		ret = -1;
		goto end;
	}
	if (g->data_len == 0 || (g->data_len == 3 && g->data[0] == 'E')) {
		ret = -1;
		goto end;
	}
	g->stub_features.lldb.g = true;

	ret = 0;
end:
	FUNC1 (g);
	return ret;
}