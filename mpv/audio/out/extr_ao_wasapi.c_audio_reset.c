
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int WASAPI_THREAD_RESET ;
 int set_thread_state (struct ao*,int ) ;

__attribute__((used)) static void audio_reset(struct ao *ao)
{
    set_thread_state(ao, WASAPI_THREAD_RESET);
}
