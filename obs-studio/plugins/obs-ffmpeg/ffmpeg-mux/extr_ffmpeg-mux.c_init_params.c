
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct main_params {int has_video; int tracks; int vbitrate; int width; int height; int fps_num; int fps_den; int muxer_settings; int acodec; int vcodec; int file; } ;
struct audio_params {int dummy; } ;


 struct audio_params* calloc (int,int) ;
 int free (struct audio_params*) ;
 int get_audio_params (struct audio_params*,int*,char***) ;
 int get_opt_int (int*,char***,int*,char*) ;
 int get_opt_str (int*,char***,int *,char*) ;
 int puts (char*) ;

__attribute__((used)) static bool init_params(int *argc, char ***argv, struct main_params *params,
   struct audio_params **p_audio)
{
 struct audio_params *audio = ((void*)0);

 if (!get_opt_str(argc, argv, &params->file, "file name"))
  return 0;
 if (!get_opt_int(argc, argv, &params->has_video, "video track count"))
  return 0;
 if (!get_opt_int(argc, argv, &params->tracks, "audio track count"))
  return 0;

 if (params->has_video > 1 || params->has_video < 0) {
  puts("Invalid number of video tracks\n");
  return 0;
 }
 if (params->tracks < 0) {
  puts("Invalid number of audio tracks\n");
  return 0;
 }
 if (params->has_video == 0 && params->tracks == 0) {
  puts("Must have at least 1 audio track or 1 video track\n");
  return 0;
 }

 if (params->has_video) {
  if (!get_opt_str(argc, argv, &params->vcodec, "video codec"))
   return 0;
  if (!get_opt_int(argc, argv, &params->vbitrate,
     "video bitrate"))
   return 0;
  if (!get_opt_int(argc, argv, &params->width, "video width"))
   return 0;
  if (!get_opt_int(argc, argv, &params->height, "video height"))
   return 0;
  if (!get_opt_int(argc, argv, &params->fps_num, "video fps num"))
   return 0;
  if (!get_opt_int(argc, argv, &params->fps_den, "video fps den"))
   return 0;
 }

 if (params->tracks) {
  if (!get_opt_str(argc, argv, &params->acodec, "audio codec"))
   return 0;

  audio = calloc(1, sizeof(*audio) * params->tracks);

  for (int i = 0; i < params->tracks; i++) {
   if (!get_audio_params(&audio[i], argc, argv)) {
    free(audio);
    return 0;
   }
  }
 }

 *p_audio = audio;

 get_opt_str(argc, argv, &params->muxer_settings, "muxer settings");

 return 1;
}
