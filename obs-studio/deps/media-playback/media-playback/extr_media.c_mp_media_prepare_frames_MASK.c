#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* frame; scalar_t__ frame_ready; } ;
struct TYPE_9__ {int eof; scalar_t__ scale_format; TYPE_7__ v; int /*<<< orphan*/  swscale; scalar_t__ has_video; TYPE_7__ a; scalar_t__ has_audio; } ;
typedef  TYPE_2__ mp_media_t ;
struct TYPE_8__ {scalar_t__ format; } ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC5(mp_media_t *m)
{
	while (!FUNC4(m)) {
		if (!m->eof) {
			int ret = FUNC3(m);
			if (ret == AVERROR_EOF)
				m->eof = true;
			else if (ret < 0)
				return false;
		}

		if (m->has_video && !FUNC1(&m->v))
			return false;
		if (m->has_audio && !FUNC1(&m->a))
			return false;
	}

	if (m->has_video && m->v.frame_ready && !m->swscale) {
		m->scale_format = FUNC0(m->v.frame->format);
		if (m->scale_format != m->v.frame->format) {
			if (!FUNC2(m)) {
				return false;
			}
		}
	}

	return true;
}