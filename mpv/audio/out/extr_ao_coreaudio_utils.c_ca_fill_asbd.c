
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct ao {TYPE_1__ channels; int samplerate; int format; } ;
typedef int AudioStreamBasicDescription ;


 int ca_fill_asbd_raw (int *,int ,int ,int ) ;

void ca_fill_asbd(struct ao *ao, AudioStreamBasicDescription *asbd)
{
    ca_fill_asbd_raw(asbd, ao->format, ao->samplerate, ao->channels.num);
}
