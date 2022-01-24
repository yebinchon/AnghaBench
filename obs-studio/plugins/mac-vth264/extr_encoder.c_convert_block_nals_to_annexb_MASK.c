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
typedef  size_t uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vt_h264_encoder {int dummy; } ;
struct darray {int dummy; } ;
typedef  int /*<<< orphan*/  CMBlockBufferRef ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,char**) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct darray*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct darray*,int) ; 

__attribute__((used)) static void FUNC6(struct vt_h264_encoder *enc,
					 struct darray *packet,
					 CMBlockBufferRef block,
					 int nal_length_bytes)
{
	size_t block_size;
	uint8_t *block_buf;

	FUNC2(block, 0, NULL, &block_size,
				    (char **)&block_buf);

	size_t bytes_remaining = block_size;

	while (bytes_remaining > 0) {
		uint32_t nal_size;
		if (nal_length_bytes == 1)
			nal_size = block_buf[0];
		else if (nal_length_bytes == 2)
			nal_size = FUNC0(
				((uint16_t *)block_buf)[0]);
		else if (nal_length_bytes == 4)
			nal_size = FUNC1(
				((uint32_t *)block_buf)[0]);
		else
			return;

		bytes_remaining -= nal_length_bytes;
		block_buf += nal_length_bytes;

		if (bytes_remaining < nal_size) {
			FUNC3(LOG_ERROR, "invalid nal block");
			return;
		}

		FUNC5(packet, 3);
		FUNC4(packet, block_buf, nal_size);

		bytes_remaining -= nal_size;
		block_buf += nal_size;
	}
}