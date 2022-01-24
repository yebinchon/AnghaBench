#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {scalar_t__ leader; int length; scalar_t__ checksum; int id; } ;
typedef  TYPE_1__ kd_packet_t ;

/* Variables and functions */
 int KD_E_IOERR ; 
 int KD_E_MALFORMED ; 
 int KD_E_OK ; 
 scalar_t__ KD_PACKET_DATA ; 
 int /*<<< orphan*/  KD_PACKET_TYPE_ACKNOWLEDGE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (void*,int*,int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(void *fp, kd_packet_t **p) {
	kd_packet_t pkt;
	uint8_t *buf;

	*p = NULL;

	if (FUNC2 (fp, (uint8_t *) &pkt, sizeof (kd_packet_t)) <= 0) {
		return KD_E_IOERR;
	}

	if (!FUNC4 (&pkt)) {
		FUNC0 ("invalid leader %08x\n", pkt.leader);
		return KD_E_MALFORMED;
	}

	buf = FUNC6 (sizeof (kd_packet_t) + pkt.length);
	if (!buf) {
		return KD_E_IOERR;
	}
	FUNC7 (buf, &pkt, sizeof(kd_packet_t));

	if (pkt.length) {
		FUNC2 (fp, (uint8_t *) buf + sizeof(kd_packet_t), pkt.length);
	}

	if (pkt.checksum != FUNC3 (buf + sizeof(kd_packet_t), pkt.length)) {
		FUNC0 ("Checksum mismatch!\n");
		FUNC1 (buf);
		return KD_E_MALFORMED;
	}

	if (pkt.leader == KD_PACKET_DATA) {
		uint8_t trailer;
		FUNC2 (fp, (uint8_t *) &trailer, 1);

		if (trailer != 0xAA) {
			FUNC8 ("Missing trailer 0xAA\n");
			FUNC1 (buf);
			return KD_E_MALFORMED;
		}

		FUNC5 (fp, KD_PACKET_TYPE_ACKNOWLEDGE, ((kd_packet_t *) buf)->id & ~(0x800));
	}

	*p = (kd_packet_t *) buf;

	return KD_E_OK;
}