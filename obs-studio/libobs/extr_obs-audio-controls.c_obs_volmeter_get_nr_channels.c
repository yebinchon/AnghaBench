
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct obs_audio_info {int speakers; } ;
struct TYPE_7__ {TYPE_2__* source; } ;
typedef TYPE_3__ obs_volmeter_t ;
struct TYPE_5__ {int speakers; } ;
struct TYPE_6__ {TYPE_1__ sample_info; } ;


 int CLAMP (int,int,int) ;
 int get_audio_channels (int ) ;
 scalar_t__ obs_get_audio_info (struct obs_audio_info*) ;

int obs_volmeter_get_nr_channels(obs_volmeter_t *volmeter)
{
 int source_nr_audio_channels;
 int obs_nr_audio_channels;

 if (volmeter->source) {
  source_nr_audio_channels = get_audio_channels(
   volmeter->source->sample_info.speakers);
 } else {
  source_nr_audio_channels = 1;
 }

 struct obs_audio_info audio_info;
 if (obs_get_audio_info(&audio_info)) {
  obs_nr_audio_channels = get_audio_channels(audio_info.speakers);
 } else {
  obs_nr_audio_channels = 2;
 }

 return CLAMP(source_nr_audio_channels, 1, obs_nr_audio_channels);
}
