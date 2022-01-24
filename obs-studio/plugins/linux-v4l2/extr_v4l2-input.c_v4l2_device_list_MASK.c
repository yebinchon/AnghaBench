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
typedef  int uint32_t ;
struct v4l2_capability {int capabilities; int device_caps; char* card; char* bus_info; } ;
struct dstr {char const* array; } ;
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_QUERYCAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 struct dirent* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*) ; 
 scalar_t__ FUNC14 (char const*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int,int /*<<< orphan*/ ,struct v4l2_capability*) ; 
 int FUNC18 (char const*,int) ; 

__attribute__((used)) static void FUNC19(obs_property_t *prop, obs_data_t *settings)
{
	DIR *dirp;
	struct dirent *dp;
	struct dstr device;
	bool cur_device_found;
	size_t cur_device_index;
	const char *cur_device_name;

#ifdef __FreeBSD__
	dirp = opendir("/dev");
#else
	dirp = FUNC10("/sys/class/video4linux");
#endif
	if (!dirp)
		return;

	cur_device_found = false;
	cur_device_name = FUNC6(settings, "device_id");

	FUNC8(prop);

	FUNC4(&device, "/dev/");

	while ((dp = FUNC11(dirp)) != NULL) {
		int fd;
		uint32_t caps;
		struct v4l2_capability video_cap;

#ifdef __FreeBSD__
		if (strstr(dp->d_name, "video") == NULL)
			continue;
#endif

		if (dp->d_type == DT_DIR)
			continue;

		FUNC5(&device, 5);
		FUNC2(&device, dp->d_name);

		if ((fd = FUNC18(device.array, O_RDWR | O_NONBLOCK)) == -1) {
			FUNC0(LOG_INFO, "Unable to open %s", device.array);
			continue;
		}

		if (FUNC17(fd, VIDIOC_QUERYCAP, &video_cap) == -1) {
			FUNC0(LOG_INFO, "Failed to query capabilities for %s",
			     device.array);
			FUNC16(fd);
			continue;
		}

#ifndef V4L2_CAP_DEVICE_CAPS
		caps = video_cap.capabilities;
#else
		/* ... since Linux 3.3 */
		caps = (video_cap.capabilities & V4L2_CAP_DEVICE_CAPS)
			       ? video_cap.device_caps
			       : video_cap.capabilities;
#endif

		if (!(caps & V4L2_CAP_VIDEO_CAPTURE)) {
			FUNC0(LOG_INFO, "%s seems to not support video capture",
			     device.array);
			FUNC16(fd);
			continue;
		}

		/* make sure device names are unique */
		char unique_device_name[68];
		FUNC12(unique_device_name, "%s (%s)", video_cap.card,
			video_cap.bus_info);
		FUNC7(prop, unique_device_name,
					     device.array);
		FUNC0(LOG_INFO, "Found device '%s' at %s", video_cap.card,
		     device.array);

		/* check if this is the currently used device */
		if (cur_device_name && !FUNC13(cur_device_name, device.array))
			cur_device_found = true;

		FUNC16(fd);
	}

	/* add currently selected device if not present, but disable it ... */
	if (!cur_device_found && cur_device_name && FUNC14(cur_device_name)) {
		cur_device_index = FUNC7(
			prop, cur_device_name, cur_device_name);
		FUNC9(prop, cur_device_index, true);
	}

	FUNC1(dirp);
	FUNC3(&device);
}