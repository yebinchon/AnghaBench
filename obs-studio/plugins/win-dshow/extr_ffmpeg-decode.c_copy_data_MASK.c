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
struct ffmpeg_decode {size_t packet_size; int /*<<< orphan*/  packet_buffer; } ;

/* Variables and functions */
 size_t INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC3(struct ffmpeg_decode *decode, uint8_t *data,
			     size_t size)
{
	size_t new_size = size + INPUT_BUFFER_PADDING_SIZE;

	if (decode->packet_size < new_size) {
		decode->packet_buffer =
			FUNC0(decode->packet_buffer, new_size);
		decode->packet_size = new_size;
	}

	FUNC2(decode->packet_buffer + size, 0, INPUT_BUFFER_PADDING_SIZE);
	FUNC1(decode->packet_buffer, data, size);
}