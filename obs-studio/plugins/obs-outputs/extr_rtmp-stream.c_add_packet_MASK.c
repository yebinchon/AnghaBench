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
struct rtmp_stream {int /*<<< orphan*/  packets; } ;
struct encoder_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct encoder_packet*,int) ; 

__attribute__((used)) static inline bool FUNC1(struct rtmp_stream *stream,
			      struct encoder_packet *packet)
{
	FUNC0(&stream->packets, packet,
			    sizeof(struct encoder_packet));
	return true;
}