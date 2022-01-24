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
struct vdev_info {int /*<<< orphan*/ * vqs; } ;

/* Variables and functions */
 unsigned long long VIRTIO_F_VERSION_1 ; 
 unsigned long long VIRTIO_RING_F_EVENT_IDX ; 
 unsigned long long VIRTIO_RING_F_INDIRECT_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/  optstring ; 
 int /*<<< orphan*/  FUNC4 (struct vdev_info*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vdev_info*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct vdev_info*,int) ; 

int FUNC7(int argc, char **argv)
{
	struct vdev_info dev;
	unsigned long long features = (1ULL << VIRTIO_RING_F_INDIRECT_DESC) |
		(1ULL << VIRTIO_RING_F_EVENT_IDX) | (1ULL << VIRTIO_F_VERSION_1);
	int o;
	bool delayed = false;

	for (;;) {
		o = FUNC2(argc, argv, optstring, longopts, NULL);
		switch (o) {
		case -1:
			goto done;
		case '?':
			FUNC3();
			FUNC1(2);
		case 'e':
			features &= ~(1ULL << VIRTIO_RING_F_EVENT_IDX);
			break;
		case 'h':
			FUNC3();
			goto done;
		case 'i':
			features &= ~(1ULL << VIRTIO_RING_F_INDIRECT_DESC);
			break;
		case '0':
			features &= ~(1ULL << VIRTIO_F_VERSION_1);
			break;
		case 'D':
			delayed = true;
			break;
		default:
			FUNC0(0);
			break;
		}
	}

done:
	FUNC5(&dev, features);
	FUNC6(&dev, 256);
	FUNC4(&dev, &dev.vqs[0], delayed, 0x100000);
	return 0;
}