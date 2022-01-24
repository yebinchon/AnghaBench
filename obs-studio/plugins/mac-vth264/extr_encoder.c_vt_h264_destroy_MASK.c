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
struct vt_h264_encoder {int /*<<< orphan*/  extra_data; int /*<<< orphan*/  packet_data; int /*<<< orphan*/ * session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vt_h264_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct vt_h264_encoder *enc = data;

	if (enc) {
		if (enc->session != NULL) {
			FUNC1(enc->session);
			FUNC0(enc->session);
		}
		FUNC3(enc->packet_data);
		FUNC3(enc->extra_data);
		FUNC2(enc);
	}
}