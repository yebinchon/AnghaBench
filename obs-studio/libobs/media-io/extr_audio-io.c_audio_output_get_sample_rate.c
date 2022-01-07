
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int samples_per_sec; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ audio_t ;



uint32_t audio_output_get_sample_rate(const audio_t *audio)
{
 return audio ? audio->info.samples_per_sec : 0;
}
