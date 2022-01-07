
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct v4l2_data {int dev; int resolution; int framerate; int width; int height; int thread; int event; int buffers; int linesize; int pixfmt; int dv_timing; int standard; int input; int device_id; } ;


 int LOG_ERROR ;
 int LOG_INFO ;
 int OS_EVENT_TYPE_MANUAL ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int V4L2_FOURCC_STR (int ) ;
 int V4L2_IN_CAP_DV_TIMINGS ;
 int V4L2_IN_CAP_STD ;
 scalar_t__ VIDEO_FORMAT_NONE ;
 int blog (int ,char*,...) ;
 scalar_t__ os_event_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct v4l2_data*) ;
 scalar_t__ v4l2_create_mmap (int,int *) ;
 scalar_t__ v4l2_get_input_caps (int,int,int*) ;
 int v4l2_open (int ,int) ;
 scalar_t__ v4l2_set_dv_timing (int,int *) ;
 scalar_t__ v4l2_set_format (int,int*,int *,int *) ;
 scalar_t__ v4l2_set_framerate (int,int*) ;
 scalar_t__ v4l2_set_input (int,int *) ;
 scalar_t__ v4l2_set_standard (int,int *) ;
 int v4l2_terminate (struct v4l2_data*) ;
 int v4l2_thread ;
 scalar_t__ v4l2_to_obs_video_format (int ) ;
 int v4l2_unpack_tuple (int*,int*,int) ;

__attribute__((used)) static void v4l2_init(struct v4l2_data *data)
{
 uint32_t input_caps;
 int fps_num, fps_denom;

 blog(LOG_INFO, "Start capture from %s", data->device_id);
 data->dev = v4l2_open(data->device_id, O_RDWR | O_NONBLOCK);
 if (data->dev == -1) {
  blog(LOG_ERROR, "Unable to open device");
  goto fail;
 }


 if (v4l2_set_input(data->dev, &data->input) < 0) {
  blog(LOG_ERROR, "Unable to set input %d", data->input);
  goto fail;
 }
 blog(LOG_INFO, "Input: %d", data->input);
 if (v4l2_get_input_caps(data->dev, -1, &input_caps) < 0) {
  blog(LOG_ERROR, "Unable to get input capabilities");
  goto fail;
 }


 if (input_caps & V4L2_IN_CAP_STD) {
  if (v4l2_set_standard(data->dev, &data->standard) < 0) {
   blog(LOG_ERROR, "Unable to set video standard");
   goto fail;
  }
  data->resolution = -1;
  data->framerate = -1;
 }

 if (input_caps & V4L2_IN_CAP_DV_TIMINGS) {
  if (v4l2_set_dv_timing(data->dev, &data->dv_timing) < 0) {
   blog(LOG_ERROR, "Unable to set dv timing");
   goto fail;
  }
  data->resolution = -1;
  data->framerate = -1;
 }


 if (v4l2_set_format(data->dev, &data->resolution, &data->pixfmt,
       &data->linesize) < 0) {
  blog(LOG_ERROR, "Unable to set format");
  goto fail;
 }
 if (v4l2_to_obs_video_format(data->pixfmt) == VIDEO_FORMAT_NONE) {
  blog(LOG_ERROR, "Selected video format not supported");
  goto fail;
 }
 v4l2_unpack_tuple(&data->width, &data->height, data->resolution);
 blog(LOG_INFO, "Resolution: %dx%d", data->width, data->height);
 blog(LOG_INFO, "Pixelformat: %s", V4L2_FOURCC_STR(data->pixfmt));
 blog(LOG_INFO, "Linesize: %d Bytes", data->linesize);


 if (v4l2_set_framerate(data->dev, &data->framerate) < 0) {
  blog(LOG_ERROR, "Unable to set framerate");
  goto fail;
 }
 v4l2_unpack_tuple(&fps_num, &fps_denom, data->framerate);
 blog(LOG_INFO, "Framerate: %.2f fps", (float)fps_denom / fps_num);


 if (v4l2_create_mmap(data->dev, &data->buffers) < 0) {
  blog(LOG_ERROR, "Failed to map buffers");
  goto fail;
 }


 if (os_event_init(&data->event, OS_EVENT_TYPE_MANUAL) != 0)
  goto fail;
 if (pthread_create(&data->thread, ((void*)0), v4l2_thread, data) != 0)
  goto fail;
 return;
fail:
 blog(LOG_ERROR, "Initialization failed");
 v4l2_terminate(data);
}
