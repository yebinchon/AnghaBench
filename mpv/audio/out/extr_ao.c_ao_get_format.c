
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int dummy; } ;
struct ao {int samplerate; int format; struct mp_chmap channels; } ;



void ao_get_format(struct ao *ao,
                   int *samplerate, int *format, struct mp_chmap *channels)
{
    *samplerate = ao->samplerate;
    *format = ao->format;
    *channels = ao->channels;
}
