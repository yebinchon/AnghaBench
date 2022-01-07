
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int alSourcePause (int ) ;
 int source ;

__attribute__((used)) static void audio_pause(struct ao *ao)
{
    alSourcePause(source);
}
