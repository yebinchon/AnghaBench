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
typedef  scalar_t__ ut64 ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {scalar_t__ payload_data; scalar_t__ payload_len; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_1__ RBinWasmSection ;
typedef  TYPE_2__ RBinWasmObj ;
typedef  int /*<<< orphan*/  RBinWasmCustomNameEntry ;

/* Variables and functions */
 int /*<<< orphan*/  R_BUF_SET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static RList *FUNC7 (RBinWasmObj *bin, RBinWasmSection *sec) {
	RList *ret = FUNC6 ();

	RBuffer *buf = bin->buf;

	FUNC1 (buf, sec->payload_data, R_BUF_SET);
	ut64 max = sec->payload_data + sec->payload_len - 1;

	if (max > FUNC2 (buf)) {
		goto beach;
	}

	while (FUNC3 (buf) < max) {
		RBinWasmCustomNameEntry *nam = FUNC0 (buf, max);

		if (!nam) {
			goto beach;
		}

		if (!FUNC4 (ret, nam)) {
			goto beach;
		}
	}

	return ret;
beach:
	FUNC5 (ret);
	return NULL;
}