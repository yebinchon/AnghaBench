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
struct TYPE_6__ {int /*<<< orphan*/  pos; } ;
struct collector_strimwidth_data {int status; int outwidth; int width; int /*<<< orphan*/  outchar; TYPE_2__* decoder; int /*<<< orphan*/  decoder_backup; TYPE_1__ device; int /*<<< orphan*/  endpos; int /*<<< orphan*/  from; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* filter_function ) (int,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(int c, void* data)
{
	struct collector_strimwidth_data *pc = (struct collector_strimwidth_data*)data;

	switch (pc->status) {
	case 10:
		(*pc->decoder->filter_function)(c, pc->decoder);
		break;
	default:
		if (pc->outchar >= pc->from) {
			pc->outwidth += (FUNC0(c) ? 2: 1);

			if (pc->outwidth > pc->width) {
				if (pc->status == 0) {
					pc->endpos = pc->device.pos;
					FUNC1(pc->decoder, pc->decoder_backup);
				}
				pc->status++;
				(*pc->decoder->filter_function)(c, pc->decoder);
				c = -1;
			} else {
				(*pc->decoder->filter_function)(c, pc->decoder);
			}
		}
		pc->outchar++;
		break;
	}

	return c;
}