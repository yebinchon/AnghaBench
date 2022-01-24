#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
struct v4l2_requestbuffers {int count; int index; TYPE_1__ m; int /*<<< orphan*/  length; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct v4l2_mmap_info {int dummy; } ;
struct v4l2_buffer_data {int count; TYPE_2__* info; } ;
struct v4l2_buffer {int count; int index; TYPE_1__ m; int /*<<< orphan*/  length; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  map ;
typedef  int int_fast32_t ;
struct TYPE_4__ {scalar_t__ start; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDIOC_QUERYBUF ; 
 int /*<<< orphan*/  VIDIOC_REQBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_requestbuffers*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_requestbuffers*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int_fast32_t FUNC5(int_fast32_t dev, struct v4l2_buffer_data *buf)
{
	struct v4l2_requestbuffers req;
	struct v4l2_buffer map;

	FUNC2(&req, 0, sizeof(req));
	req.count = 4;
	req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	req.memory = V4L2_MEMORY_MMAP;

	if (FUNC3(dev, VIDIOC_REQBUFS, &req) < 0) {
		FUNC0(LOG_ERROR, "Request for buffers failed !");
		return -1;
	}

	if (req.count < 2) {
		FUNC0(LOG_ERROR, "Device returned less than 2 buffers");
		return -1;
	}

	buf->count = req.count;
	buf->info = FUNC1(req.count * sizeof(struct v4l2_mmap_info));

	FUNC2(&map, 0, sizeof(map));
	map.type = req.type;
	map.memory = req.memory;

	for (map.index = 0; map.index < req.count; ++map.index) {
		if (FUNC3(dev, VIDIOC_QUERYBUF, &map) < 0) {
			FUNC0(LOG_ERROR, "Failed to query buffer details");
			return -1;
		}

		buf->info[map.index].length = map.length;
		buf->info[map.index].start =
			FUNC4(NULL, map.length, PROT_READ | PROT_WRITE,
				  MAP_SHARED, dev, map.m.offset);

		if (buf->info[map.index].start == MAP_FAILED) {
			FUNC0(LOG_ERROR, "mmap for buffer failed");
			return -1;
		}
	}

	return 0;
}