#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
struct TYPE_15__ {scalar_t__ cmd; } ;
struct TYPE_17__ {TYPE_5__ okdata; TYPE_4__ hdr; } ;
struct TYPE_18__ {TYPE_6__ pkt; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct TYPE_13__ {TYPE_1__ memrd; } ;
struct TYPE_14__ {TYPE_2__ pkt; } ;
struct TYPE_19__ {TYPE_7__ recv; TYPE_3__ tran; } ;
typedef  TYPE_8__ libqnxr_t ;

/* Variables and functions */
 int DS_DATA_MAX_SIZE ; 
 scalar_t__ DSrMsg_okdata ; 
 int /*<<< orphan*/  DStMsg_memrd ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  SET_CHANNEL_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (libqnxr_t *g, ut64 address, ut8 *data, ut64 len) {
	int rcv_len, tot_len, ask_len;
	ut64 addr;

	if (!g || !data) return -1;

	tot_len = rcv_len = ask_len = 0;

	do {
		FUNC4 (g, DStMsg_memrd, 0, SET_CHANNEL_DEBUG);
		addr = address + tot_len;
		g->tran.pkt.memrd.addr = FUNC1 (&addr, 8);
		ask_len = ((len - tot_len) > DS_DATA_MAX_SIZE) ?
				  DS_DATA_MAX_SIZE :
				  (len - tot_len);

		g->tran.pkt.memrd.size = FUNC0 (&ask_len, 2);
		rcv_len = FUNC3 (g, sizeof (g->tran.pkt.memrd), 0) -
			  sizeof (g->recv.pkt.hdr);
		if (rcv_len <= 0) break;
		if (g->recv.pkt.hdr.cmd == DSrMsg_okdata) {
			FUNC2 (data + tot_len, g->recv.pkt.okdata.data, rcv_len);
			tot_len += rcv_len;
		} else
			break;
	} while (tot_len != len);

	return tot_len;
}