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
typedef  int /*<<< orphan*/  uint8_t ;
struct flv_output {int /*<<< orphan*/  file; int /*<<< orphan*/  start_dts_offset; int /*<<< orphan*/  last_packet_ts; } ;
struct encoder_packet {int /*<<< orphan*/  dts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct encoder_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct encoder_packet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct flv_output *stream,
			struct encoder_packet *packet, bool is_header)
{
	uint8_t *data;
	size_t size;
	int ret = 0;

	stream->last_packet_ts = FUNC3(packet, packet->dts);

	FUNC1(packet, is_header ? 0 : stream->start_dts_offset, &data,
		       &size, is_header);
	FUNC2(data, 1, size, stream->file);
	FUNC0(data);

	return ret;
}