#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ const type; scalar_t__ leader; } ;
typedef  TYPE_1__ kd_packet_t ;
struct TYPE_11__ {int /*<<< orphan*/  io_ptr; } ;
typedef  TYPE_2__ WindCtx ;

/* Variables and functions */
 int KD_E_MALFORMED ; 
 int KD_E_OK ; 
 scalar_t__ KD_PACKET_CTRL ; 
 scalar_t__ KD_PACKET_DATA ; 
 scalar_t__ KD_PACKET_TYPE_FILE_IO ; 
 scalar_t__ KD_PACKET_TYPE_RESEND ; 
 scalar_t__ KD_PACKET_TYPE_STATE_CHANGE64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(WindCtx *ctx, const uint32_t type, kd_packet_t **p) {
	kd_packet_t *pkt = NULL;
	int ret;
	int retries = 10;

	do {
		if (pkt) {
			FUNC0 (pkt);
		}
		// Try to read a whole packet
		ret = FUNC4 (ctx->io_ptr, &pkt);
		if (ret != KD_E_OK || !pkt) {
			break;
		}

		// eprintf ("Received %08x\n", pkt->type);
		if (pkt->type != type) {
			FUNC2 ("We were not waiting for this... %08x\n", pkt->type);
		}
		if (pkt->leader == KD_PACKET_DATA && pkt->type == KD_PACKET_TYPE_STATE_CHANGE64) {
			// dump_stc (pkt);
			FUNC2 ("State64\n");
		}
		if (pkt->leader == KD_PACKET_DATA && pkt->type == KD_PACKET_TYPE_FILE_IO) {
			FUNC2 ("Replying IO\n");
			FUNC1 (ctx, pkt);
		}

		// Check for RESEND
		// The host didn't like our request
		if (pkt->leader == KD_PACKET_CTRL && pkt->type == KD_PACKET_TYPE_RESEND) {
			FUNC5 ();
			FUNC2 ("Waoh. You probably sent a malformed packet !\n");
			ret = KD_E_MALFORMED;
			//break;
		}
	} while (pkt->type != type && retries--);

	if (ret != KD_E_OK) {
		FUNC3 (pkt);
		return ret;
	}

	if (p) {
		*p = pkt;
	} else {
		FUNC3 (pkt);
	}

	return KD_E_OK;
}