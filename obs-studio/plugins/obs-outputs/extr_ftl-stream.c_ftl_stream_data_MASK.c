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
struct ftl_stream {int /*<<< orphan*/  send_sem; int /*<<< orphan*/  packets_mutex; int /*<<< orphan*/  encode_error; } ;
struct encoder_packet {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct ftl_stream*) ; 
 int FUNC1 (struct ftl_stream*,struct encoder_packet*) ; 
 int FUNC2 (struct ftl_stream*,struct encoder_packet*) ; 
 scalar_t__ FUNC3 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void *data, struct encoder_packet *packet)
{
	struct ftl_stream *stream = data;

	struct encoder_packet new_packet;
	bool added_packet = false;

	if (FUNC3(stream) || !FUNC0(stream))
		return;

	/* encoder failure */
	if (!packet) {
		FUNC7(&stream->encode_error, true);
		FUNC8(stream->send_sem);
		return;
	}

	if (packet->type == OBS_ENCODER_VIDEO)
		FUNC6(&new_packet, packet);
	else
		FUNC4(&new_packet, packet);

	FUNC9(&stream->packets_mutex);

	if (!FUNC3(stream)) {
		added_packet = (packet->type == OBS_ENCODER_VIDEO)
				       ? FUNC2(stream, &new_packet)
				       : FUNC1(stream, &new_packet);
	}

	FUNC10(&stream->packets_mutex);

	if (added_packet)
		FUNC8(stream->send_sem);
	else
		FUNC5(&new_packet);
}