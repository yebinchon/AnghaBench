
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_t ;
struct TYPE_3__ {int * audio; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;


 TYPE_2__* obs ;

audio_t *obs_get_audio(void)
{
 return (obs != ((void*)0)) ? obs->audio.audio : ((void*)0);
}
