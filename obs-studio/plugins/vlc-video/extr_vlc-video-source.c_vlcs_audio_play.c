
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {unsigned int frames; scalar_t__ timestamp; scalar_t__* data; int speakers; int format; } ;
struct vlc_source {unsigned int audio_capacity; TYPE_1__ audio; int source; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ brealloc (void*,size_t) ;
 size_t get_audio_size (int ,int ,unsigned int) ;
 int memcpy (void*,void const*,size_t) ;
 int obs_source_output_audio (int ,TYPE_1__*) ;
 scalar_t__ time_start ;

__attribute__((used)) static void vlcs_audio_play(void *data, const void *samples, unsigned count,
       int64_t pts)
{
 struct vlc_source *c = data;
 size_t size = get_audio_size(c->audio.format, c->audio.speakers, count);

 if (c->audio_capacity < count) {
  c->audio.data[0] = brealloc((void *)c->audio.data[0], size);
  c->audio_capacity = count;
 }

 memcpy((void *)c->audio.data[0], samples, size);
 c->audio.timestamp = (uint64_t)pts * 1000ULL - time_start;
 c->audio.frames = count;

 obs_source_output_audio(c->source, &c->audio);
}
