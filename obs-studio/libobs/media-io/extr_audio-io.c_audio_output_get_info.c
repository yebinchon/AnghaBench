
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct audio_output_info {int dummy; } ;
struct TYPE_3__ {struct audio_output_info const info; } ;
typedef TYPE_1__ audio_t ;



const struct audio_output_info *audio_output_get_info(const audio_t *audio)
{
 return audio ? &audio->info : ((void*)0);
}
