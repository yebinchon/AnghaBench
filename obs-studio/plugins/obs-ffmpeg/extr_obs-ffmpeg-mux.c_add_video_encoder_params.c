
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_t ;
struct video_output_info {scalar_t__ fps_den; scalar_t__ fps_num; } ;
struct ffmpeg_muxer {int output; } ;
struct dstr {int dummy; } ;
typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int dstr_catf (struct dstr*,char*,int ,int,int ,int ,int,int) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_encoder_get_codec (int *) ;
 int * obs_encoder_get_settings (int *) ;
 int * obs_get_video () ;
 int obs_output_get_height (int ) ;
 int obs_output_get_width (int ) ;
 struct video_output_info* video_output_get_info (int *) ;

__attribute__((used)) static void add_video_encoder_params(struct ffmpeg_muxer *stream,
         struct dstr *cmd, obs_encoder_t *vencoder)
{
 obs_data_t *settings = obs_encoder_get_settings(vencoder);
 int bitrate = (int)obs_data_get_int(settings, "bitrate");
 video_t *video = obs_get_video();
 const struct video_output_info *info = video_output_get_info(video);

 obs_data_release(settings);

 dstr_catf(cmd, "%s %d %d %d %d %d ", obs_encoder_get_codec(vencoder),
    bitrate, obs_output_get_width(stream->output),
    obs_output_get_height(stream->output), (int)info->fps_num,
    (int)info->fps_den);
}
