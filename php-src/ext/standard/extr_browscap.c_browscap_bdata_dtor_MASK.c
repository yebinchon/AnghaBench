#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t kv_used; char* filename; TYPE_2__* kv; TYPE_2__* htab; } ;
typedef  TYPE_1__ browser_data ;
struct TYPE_6__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(browser_data *bdata, int persistent) /* {{{ */
{
	if (bdata->htab != NULL) {
		uint32_t i;

		FUNC1(bdata->htab);
		FUNC0(bdata->htab, persistent);
		bdata->htab = NULL;

		for (i = 0; i < bdata->kv_used; i++) {
			FUNC2(bdata->kv[i].key);
			FUNC2(bdata->kv[i].value);
		}
		FUNC0(bdata->kv, persistent);
		bdata->kv = NULL;
	}
	bdata->filename[0] = '\0';
}