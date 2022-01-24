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
struct vq_info {int /*<<< orphan*/  vq; } ;
struct vdev_info {int /*<<< orphan*/  control; scalar_t__ buf; int /*<<< orphan*/  buf_size; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VHOST_TEST_RUN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct scatterlist*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vdev_info*) ; 

__attribute__((used)) static void FUNC13(struct vdev_info *dev, struct vq_info *vq,
		     bool delayed, int bufs)
{
	struct scatterlist sl;
	long started = 0, completed = 0;
	long completed_before;
	int r, test = 1;
	unsigned len;
	long long spurious = 0;
	r = FUNC2(dev->control, VHOST_TEST_RUN, &test);
	FUNC0(r >= 0);
	for (;;) {
		FUNC7(vq->vq);
		completed_before = completed;
		do {
			if (started < bufs) {
				FUNC4(&sl, dev->buf, dev->buf_size);
				r = FUNC6(vq->vq, &sl, 1,
							 dev->buf + started,
							 GFP_ATOMIC);
				if (FUNC3(r == 0)) {
					++started;
					if (FUNC5(!FUNC11(vq->vq)))
						r = -1;
				}
			} else
				r = -1;

			/* Flush out completed bufs if any */
			if (FUNC10(vq->vq, &len)) {
				++completed;
				r = 0;
			}

		} while (r == 0);
		if (completed == completed_before)
			++spurious;
		FUNC0(completed <= bufs);
		FUNC0(started <= bufs);
		if (completed == bufs)
			break;
		if (delayed) {
			if (FUNC9(vq->vq))
				FUNC12(dev);
		} else {
			if (FUNC8(vq->vq))
				FUNC12(dev);
		}
	}
	test = 0;
	r = FUNC2(dev->control, VHOST_TEST_RUN, &test);
	FUNC0(r >= 0);
	FUNC1(stderr, "spurious wakeups: 0x%llx\n", spurious);
}