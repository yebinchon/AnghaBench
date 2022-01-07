
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t block_size; } ;
typedef TYPE_1__ audio_t ;



size_t audio_output_get_block_size(const audio_t *audio)
{
 return audio ? audio->block_size : 0;
}
