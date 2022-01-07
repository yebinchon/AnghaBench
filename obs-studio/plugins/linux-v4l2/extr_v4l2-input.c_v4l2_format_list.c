
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int flags; scalar_t__ index; int pixelformat; scalar_t__ description; int type; } ;
struct dstr {int array; } ;
typedef int obs_property_t ;


 int LOG_INFO ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FMT_FLAG_EMULATED ;
 scalar_t__ VIDEO_FORMAT_NONE ;
 int VIDIOC_ENUM_FMT ;
 int blog (int ,char*,int ) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int obs_property_list_add_int (int *,int ,int ) ;
 int obs_property_list_clear (int *) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_fmtdesc*) ;
 scalar_t__ v4l2_to_obs_video_format (int ) ;

__attribute__((used)) static void v4l2_format_list(int dev, obs_property_t *prop)
{
 struct v4l2_fmtdesc fmt;
 fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 fmt.index = 0;
 struct dstr buffer;
 dstr_init(&buffer);

 obs_property_list_clear(prop);

 while (v4l2_ioctl(dev, VIDIOC_ENUM_FMT, &fmt) == 0) {
  dstr_copy(&buffer, (char *)fmt.description);
  if (fmt.flags & V4L2_FMT_FLAG_EMULATED)
   dstr_cat(&buffer, " (Emulated)");

  if (v4l2_to_obs_video_format(fmt.pixelformat) !=
      VIDEO_FORMAT_NONE) {
   obs_property_list_add_int(prop, buffer.array,
        fmt.pixelformat);
   blog(LOG_INFO, "Pixelformat: %s (available)",
        buffer.array);
  } else {
   blog(LOG_INFO, "Pixelformat: %s (unavailable)",
        buffer.array);
  }
  fmt.index++;
 }

 dstr_free(&buffer);
}
