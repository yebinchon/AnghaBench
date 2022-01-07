
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct v4l2_capability {int capabilities; int device_caps; char* card; char* bus_info; } ;
struct dstr {char const* array; } ;
struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int obs_property_t ;
typedef int obs_data_t ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int LOG_INFO ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VIDIOC_QUERYCAP ;
 int blog (int ,char*,char const*,...) ;
 int closedir (int *) ;
 int dstr_cat (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char*) ;
 int dstr_resize (struct dstr*,int) ;
 char* obs_data_get_string (int *,char*) ;
 size_t obs_property_list_add_string (int *,char const*,char const*) ;
 int obs_property_list_clear (int *) ;
 int obs_property_list_item_disable (int *,size_t,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int * strstr (int ,char*) ;
 int v4l2_close (int) ;
 int v4l2_ioctl (int,int ,struct v4l2_capability*) ;
 int v4l2_open (char const*,int) ;

__attribute__((used)) static void v4l2_device_list(obs_property_t *prop, obs_data_t *settings)
{
 DIR *dirp;
 struct dirent *dp;
 struct dstr device;
 bool cur_device_found;
 size_t cur_device_index;
 const char *cur_device_name;




 dirp = opendir("/sys/class/video4linux");

 if (!dirp)
  return;

 cur_device_found = 0;
 cur_device_name = obs_data_get_string(settings, "device_id");

 obs_property_list_clear(prop);

 dstr_init_copy(&device, "/dev/");

 while ((dp = readdir(dirp)) != ((void*)0)) {
  int fd;
  uint32_t caps;
  struct v4l2_capability video_cap;






  if (dp->d_type == DT_DIR)
   continue;

  dstr_resize(&device, 5);
  dstr_cat(&device, dp->d_name);

  if ((fd = v4l2_open(device.array, O_RDWR | O_NONBLOCK)) == -1) {
   blog(LOG_INFO, "Unable to open %s", device.array);
   continue;
  }

  if (v4l2_ioctl(fd, VIDIOC_QUERYCAP, &video_cap) == -1) {
   blog(LOG_INFO, "Failed to query capabilities for %s",
        device.array);
   v4l2_close(fd);
   continue;
  }


  caps = video_cap.capabilities;







  if (!(caps & V4L2_CAP_VIDEO_CAPTURE)) {
   blog(LOG_INFO, "%s seems to not support video capture",
        device.array);
   v4l2_close(fd);
   continue;
  }


  char unique_device_name[68];
  sprintf(unique_device_name, "%s (%s)", video_cap.card,
   video_cap.bus_info);
  obs_property_list_add_string(prop, unique_device_name,
          device.array);
  blog(LOG_INFO, "Found device '%s' at %s", video_cap.card,
       device.array);


  if (cur_device_name && !strcmp(cur_device_name, device.array))
   cur_device_found = 1;

  v4l2_close(fd);
 }


 if (!cur_device_found && cur_device_name && strlen(cur_device_name)) {
  cur_device_index = obs_property_list_add_string(
   prop, cur_device_name, cur_device_name);
  obs_property_list_item_disable(prop, cur_device_index, 1);
 }

 closedir(dirp);
 dstr_free(&device);
}
