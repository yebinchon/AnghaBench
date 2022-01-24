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
typedef  scalar_t__ ut32 ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {scalar_t__ payload_len; scalar_t__ count; int /*<<< orphan*/  name; int /*<<< orphan*/  payload_data; } ;
typedef  int /*<<< orphan*/  (* RListFree ) (void*) ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_1__ RBinWasmSection ;
typedef  TYPE_2__ RBinWasmObj ;
typedef  void* (* ParseEntryFcn ) (int /*<<< orphan*/ *,scalar_t__) ;

/* Variables and functions */
 int /*<<< orphan*/  R_BUF_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  (*) (void*)) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RList *FUNC7 (RBinWasmObj *bin, RBinWasmSection *sec, ParseEntryFcn parse_entry, RListFree free_entry) {
	FUNC6 (sec && bin, NULL);

	RList *ret = FUNC5 (free_entry);
	if (!ret) {
		return NULL;
	}
	RBuffer *b = bin->buf;
	FUNC1 (b, sec->payload_data, R_BUF_SET);
	ut32 r = 0;
	ut64 max = FUNC3 (b) + sec->payload_len - 1;
	if (!(max < FUNC2 (b))) {
		goto beach;
	}
	while (FUNC3 (b) <= max && r < sec->count) {
		void *entry = parse_entry (b, max);
		if (!entry) {
			goto beach;
		}

		if (!FUNC4 (ret, entry)) {
			free_entry (entry);
			// should this jump to beach?
		}
		r++;
	}
	return ret;
beach:
	FUNC0 ("[wasm] error: beach reading entries for section %s\n", sec->name);
	return ret;
}