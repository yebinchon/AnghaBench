#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mp_decode {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ mp_media_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct mp_decode* FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_decode*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(mp_media_t *media)
{
	AVPacket new_pkt;
	AVPacket pkt;
	FUNC1(&pkt);
	new_pkt = pkt;

	int ret = FUNC4(media->fmt, &pkt);
	if (ret < 0) {
		if (ret != AVERROR_EOF)
			FUNC5(LOG_WARNING, "MP: av_read_frame failed: %s (%d)",
			     FUNC0(ret), ret);
		return ret;
	}

	struct mp_decode *d = FUNC6(media, &pkt);
	if (d && pkt.size) {
		FUNC2(&new_pkt, &pkt);
		FUNC7(d, &new_pkt);
	}

	FUNC3(&pkt);
	return ret;
}