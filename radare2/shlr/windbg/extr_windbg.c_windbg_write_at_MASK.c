#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int length; int read; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_1__ r_mem; scalar_t__ ret; int /*<<< orphan*/  cpu; int /*<<< orphan*/  req; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ kd_req_t ;
typedef  int /*<<< orphan*/  kd_packet_t ;
struct TYPE_9__ {int seq_id; int /*<<< orphan*/  io_ptr; int /*<<< orphan*/  cpu; int /*<<< orphan*/  syncd; } ;
typedef  TYPE_3__ WindCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DbgKdWriteVirtualMemoryApi ; 
 int KD_E_OK ; 
 scalar_t__ KD_MAX_PAYLOAD ; 
 int /*<<< orphan*/  KD_PACKET_TYPE_ACKNOWLEDGE ; 
 int /*<<< orphan*/  KD_PACKET_TYPE_STATE_MANIPULATE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int FUNC5(WindCtx *ctx, const uint8_t *buf, const ut64 offset, const int count) {
	kd_packet_t *pkt;
	kd_req_t req = {
		0
	}, *rr;
	int payload, ret;

	if (!ctx || !ctx->io_ptr || !ctx->syncd) {
		return 0;
	}

	payload = FUNC1 (count, KD_MAX_PAYLOAD - sizeof(kd_req_t));
	req.req = DbgKdWriteVirtualMemoryApi;
	req.cpu = ctx->cpu;
	req.r_mem.addr = offset;
	req.r_mem.length = payload;

	ret = FUNC3 (ctx->io_ptr, KD_PACKET_TYPE_STATE_MANIPULATE,
		(ctx->seq_id ^= 1), (uint8_t *) &req,
		sizeof(kd_req_t), buf, payload);
	if (ret != KD_E_OK) {
		return 0;
	}

	ret = FUNC4 (ctx, KD_PACKET_TYPE_ACKNOWLEDGE, NULL);
	if (ret != KD_E_OK) {
		return 0;
	}

	ret = FUNC4 (ctx, KD_PACKET_TYPE_STATE_MANIPULATE, &pkt);
	if (ret != KD_E_OK) {
		return 0;
	}

	rr = FUNC0 (pkt);

	if (rr->ret) {
		FUNC2 (pkt);
		return 0;
	}

	ret = rr->r_mem.read;
	FUNC2 (pkt);
	return ret;
}