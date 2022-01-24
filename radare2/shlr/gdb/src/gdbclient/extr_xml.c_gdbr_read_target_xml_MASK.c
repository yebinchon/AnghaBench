#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  qXfer_features_read; } ;
struct TYPE_7__ {TYPE_1__ stub_features; } ;
typedef  TYPE_2__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 

int FUNC3(libgdbr_t *g) {
	if (!g->stub_features.qXfer_features_read) {
		return -1;
	}
	char *data;
	ut64 len;
	if (!(data = FUNC2 (g, "target.xml", &len))) {
		return -1;
	}
	FUNC1 (g, data, len);
	FUNC0 (data);
	return 0;
}