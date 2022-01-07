
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int path; int output; } ;
struct dstr {int dummy; } ;
typedef int obs_encoder_t ;


 int FFMPEG_MUX ;
 int MAX_AUDIO_MIXES ;
 int add_audio_encoder_params (struct dstr*,int *) ;
 int add_muxer_params (struct dstr*,struct ffmpeg_muxer*) ;
 int add_video_encoder_params (struct ffmpeg_muxer*,struct dstr*,int *) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,int *) ;
 int dstr_catf (struct dstr*,char*,int,int) ;
 int dstr_copy (int *,char const*) ;
 int dstr_init_move_array (struct dstr*,int ) ;
 int dstr_insert_ch (struct dstr*,int ,char) ;
 int dstr_replace (int *,char*,char*) ;
 int * obs_output_get_audio_encoder (int ,int) ;
 int * obs_output_get_video_encoder (int ) ;
 int os_get_executable_path_ptr (int ) ;

__attribute__((used)) static void build_command_line(struct ffmpeg_muxer *stream, struct dstr *cmd,
          const char *path)
{
 obs_encoder_t *vencoder = obs_output_get_video_encoder(stream->output);
 obs_encoder_t *aencoders[MAX_AUDIO_MIXES];
 int num_tracks = 0;

 for (;;) {
  obs_encoder_t *aencoder = obs_output_get_audio_encoder(
   stream->output, num_tracks);
  if (!aencoder)
   break;

  aencoders[num_tracks] = aencoder;
  num_tracks++;
 }

 dstr_init_move_array(cmd, os_get_executable_path_ptr(FFMPEG_MUX));
 dstr_insert_ch(cmd, 0, '\"');
 dstr_cat(cmd, "\" \"");

 dstr_copy(&stream->path, path);
 dstr_replace(&stream->path, "\"", "\"\"");
 dstr_cat_dstr(cmd, &stream->path);

 dstr_catf(cmd, "\" %d %d ", vencoder ? 1 : 0, num_tracks);

 if (vencoder)
  add_video_encoder_params(stream, cmd, vencoder);

 if (num_tracks) {
  dstr_cat(cmd, "aac ");

  for (int i = 0; i < num_tracks; i++) {
   add_audio_encoder_params(cmd, aencoders[i]);
  }
 }

 add_muxer_params(cmd, stream);
}
