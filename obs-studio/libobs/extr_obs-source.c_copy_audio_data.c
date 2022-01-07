
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int * data; int timestamp; scalar_t__ frames; } ;
struct TYPE_8__ {size_t audio_storage_size; TYPE_2__ audio_data; } ;
typedef TYPE_3__ obs_source_t ;
struct TYPE_6__ {int audio; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;


 size_t audio_output_get_block_size (int ) ;
 size_t audio_output_get_planes (int ) ;
 int bfree (int ) ;
 int bmalloc (size_t) ;
 int memcpy (int ,int const* const,size_t) ;
 TYPE_4__* obs ;

__attribute__((used)) static void copy_audio_data(obs_source_t *source, const uint8_t *const data[],
       uint32_t frames, uint64_t ts)
{
 size_t planes = audio_output_get_planes(obs->audio.audio);
 size_t blocksize = audio_output_get_block_size(obs->audio.audio);
 size_t size = (size_t)frames * blocksize;
 bool resize = source->audio_storage_size < size;

 source->audio_data.frames = frames;
 source->audio_data.timestamp = ts;

 for (size_t i = 0; i < planes; i++) {

  if (resize) {
   bfree(source->audio_data.data[i]);
   source->audio_data.data[i] = bmalloc(size);
  }

  memcpy(source->audio_data.data[i], data[i], size);
 }

 if (resize)
  source->audio_storage_size = size;
}
