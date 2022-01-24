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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct ftl_stream *stream,
				   struct encoder_packet *packet)
{
	bool new_packet = false;

	FUNC1(&stream->packets_mutex);
	if (stream->packets.size) {
		FUNC0(&stream->packets, packet,
				    sizeof(struct encoder_packet));
		new_packet = true;
	}
	FUNC2(&stream->packets_mutex);

	return new_packet;
}