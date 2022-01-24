#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_8__ {int report_location; int /*<<< orphan*/  callback_name; TYPE_3__* ctx; } ;
struct TYPE_7__ {TYPE_2__* slot; } ;
struct TYPE_5__ {int /*<<< orphan*/  plugin; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_4__ LogicalErrorCallbackState ;

/* Variables and functions */
 int InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	LogicalErrorCallbackState *state = (LogicalErrorCallbackState *) arg;

	/* not all callbacks have an associated LSN  */
	if (state->report_location != InvalidXLogRecPtr)
		FUNC1("slot \"%s\", output plugin \"%s\", in the %s callback, associated LSN %X/%X",
				   FUNC0(state->ctx->slot->data.name),
				   FUNC0(state->ctx->slot->data.plugin),
				   state->callback_name,
				   (uint32) (state->report_location >> 32),
				   (uint32) state->report_location);
	else
		FUNC1("slot \"%s\", output plugin \"%s\", in the %s callback",
				   FUNC0(state->ctx->slot->data.name),
				   FUNC0(state->ctx->slot->data.plugin),
				   state->callback_name);
}