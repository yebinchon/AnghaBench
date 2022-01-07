
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int reset (struct ao*) ;

__attribute__((used)) static void audio_pause(struct ao *ao)
{
    reset(ao);
}
