#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tpacket_hdr {scalar_t__ tp_status; int /*<<< orphan*/  tp_len; } ;

/* Variables and functions */
 scalar_t__ TP_STATUS_AVAILABLE ; 
 scalar_t__ TP_STATUS_SEND_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  cfg_frame_size ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int eth_off ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int fdt, void *slot, char payload_char)
{
	struct tpacket_hdr *header = slot;
	int ret;

	while (header->tp_status != TP_STATUS_AVAILABLE)
		FUNC3(1000);

	FUNC0(slot + eth_off, cfg_frame_size, payload_char);

	header->tp_len = cfg_frame_size;
	header->tp_status = TP_STATUS_SEND_REQUEST;

	ret = FUNC2(fdt, NULL, 0, 0, NULL, 0);
	if (ret == -1)
		FUNC1(1, errno, "kick tx");
}