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
struct v4l2_data {int dev; int resolution; int framerate; int width; int height; int /*<<< orphan*/  thread; int /*<<< orphan*/  event; int /*<<< orphan*/  buffers; int /*<<< orphan*/  linesize; int /*<<< orphan*/  pixfmt; int /*<<< orphan*/  dv_timing; int /*<<< orphan*/  standard; int /*<<< orphan*/  input; int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  OS_EVENT_TYPE_MANUAL ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int V4L2_IN_CAP_DV_TIMINGS ; 
 int V4L2_IN_CAP_STD ; 
 scalar_t__ VIDEO_FORMAT_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_data*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_data*) ; 
 int /*<<< orphan*/  v4l2_thread ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int) ; 

__attribute__((used)) static void FUNC15(struct v4l2_data *data)
{
	uint32_t input_caps;
	int fps_num, fps_denom;

	FUNC1(LOG_INFO, "Start capture from %s", data->device_id);
	data->dev = FUNC6(data->device_id, O_RDWR | O_NONBLOCK);
	if (data->dev == -1) {
		FUNC1(LOG_ERROR, "Unable to open device");
		goto fail;
	}

	/* set input */
	if (FUNC10(data->dev, &data->input) < 0) {
		FUNC1(LOG_ERROR, "Unable to set input %d", data->input);
		goto fail;
	}
	FUNC1(LOG_INFO, "Input: %d", data->input);
	if (FUNC5(data->dev, -1, &input_caps) < 0) {
		FUNC1(LOG_ERROR, "Unable to get input capabilities");
		goto fail;
	}

	/* set video standard if supported */
	if (input_caps & V4L2_IN_CAP_STD) {
		if (FUNC11(data->dev, &data->standard) < 0) {
			FUNC1(LOG_ERROR, "Unable to set video standard");
			goto fail;
		}
		data->resolution = -1;
		data->framerate = -1;
	}
	/* set dv timing if supported */
	if (input_caps & V4L2_IN_CAP_DV_TIMINGS) {
		if (FUNC7(data->dev, &data->dv_timing) < 0) {
			FUNC1(LOG_ERROR, "Unable to set dv timing");
			goto fail;
		}
		data->resolution = -1;
		data->framerate = -1;
	}

	/* set pixel format and resolution */
	if (FUNC8(data->dev, &data->resolution, &data->pixfmt,
			    &data->linesize) < 0) {
		FUNC1(LOG_ERROR, "Unable to set format");
		goto fail;
	}
	if (FUNC13(data->pixfmt) == VIDEO_FORMAT_NONE) {
		FUNC1(LOG_ERROR, "Selected video format not supported");
		goto fail;
	}
	FUNC14(&data->width, &data->height, data->resolution);
	FUNC1(LOG_INFO, "Resolution: %dx%d", data->width, data->height);
	FUNC1(LOG_INFO, "Pixelformat: %s", FUNC0(data->pixfmt));
	FUNC1(LOG_INFO, "Linesize: %d Bytes", data->linesize);

	/* set framerate */
	if (FUNC9(data->dev, &data->framerate) < 0) {
		FUNC1(LOG_ERROR, "Unable to set framerate");
		goto fail;
	}
	FUNC14(&fps_num, &fps_denom, data->framerate);
	FUNC1(LOG_INFO, "Framerate: %.2f fps", (float)fps_denom / fps_num);

	/* map buffers */
	if (FUNC4(data->dev, &data->buffers) < 0) {
		FUNC1(LOG_ERROR, "Failed to map buffers");
		goto fail;
	}

	/* start the capture thread */
	if (FUNC2(&data->event, OS_EVENT_TYPE_MANUAL) != 0)
		goto fail;
	if (FUNC3(&data->thread, NULL, v4l2_thread, data) != 0)
		goto fail;
	return;
fail:
	FUNC1(LOG_ERROR, "Initialization failed");
	FUNC12(data);
}