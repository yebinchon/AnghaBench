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
struct ffm_packet_info {int size; int /*<<< orphan*/  member_0; } ;
typedef  struct ffm_packet_info uint8_t ;
struct ffmpeg_mux {int dummy; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_mux*,struct ffm_packet_info*,struct ffm_packet_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ffm_packet_info*) ; 
 struct ffm_packet_info* FUNC2 (int) ; 
 int FUNC3 (struct ffm_packet_info*,int) ; 

__attribute__((used)) static bool FUNC4(struct ffmpeg_mux *ffm)
{
	struct ffm_packet_info info = {0};

	bool success = FUNC3(&info, sizeof(info)) == sizeof(info);
	if (success) {
		uint8_t *data = FUNC2(info.size);

		if (FUNC3(data, info.size) == info.size) {
			FUNC0(ffm, data, &info);
		} else {
			success = false;
		}

		FUNC1(data);
	}

	return success;
}