
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_params {int channels; int sample_rate; int abitrate; int name; } ;


 int get_opt_int (int*,char***,int *,char*) ;
 int get_opt_str (int*,char***,int *,char*) ;

__attribute__((used)) static bool get_audio_params(struct audio_params *audio, int *argc,
        char ***argv)
{
 if (!get_opt_str(argc, argv, &audio->name, "audio track name"))
  return 0;
 if (!get_opt_int(argc, argv, &audio->abitrate, "audio bitrate"))
  return 0;
 if (!get_opt_int(argc, argv, &audio->sample_rate, "audio sample rate"))
  return 0;
 if (!get_opt_int(argc, argv, &audio->channels, "audio channels"))
  return 0;
 return 1;
}
