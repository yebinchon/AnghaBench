#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ size; } ;
struct ftl_stream {int /*<<< orphan*/  packets_mutex; TYPE_1__ packets; } ;
struct encoder_packet {int dummy; } ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 size_t FUNC2 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct ftl_stream *stream)
{
	size_t num_packets;

	FUNC4(&stream->packets_mutex);

	num_packets = FUNC2(stream);
	if (num_packets)
		FUNC1("Freeing %d remaining packets", (int)num_packets);

	while (stream->packets.size) {
		struct encoder_packet packet;
		FUNC0(&stream->packets, &packet, sizeof(packet));
		FUNC3(&packet);
	}
	FUNC5(&stream->packets_mutex);
}