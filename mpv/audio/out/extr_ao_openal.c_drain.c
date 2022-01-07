
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;
typedef scalar_t__ ALint ;


 scalar_t__ AL_PLAYING ;
 int AL_SOURCE_STATE ;
 int alGetSourcei (int ,int ,scalar_t__*) ;
 int mp_sleep_us (int) ;
 int source ;

__attribute__((used)) static void drain(struct ao *ao)
{
    ALint state;
    alGetSourcei(source, AL_SOURCE_STATE, &state);
    while (state == AL_PLAYING) {
        mp_sleep_us(10000);
        alGetSourcei(source, AL_SOURCE_STATE, &state);
    }
}
