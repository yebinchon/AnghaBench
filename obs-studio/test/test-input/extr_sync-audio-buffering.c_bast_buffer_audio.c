
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffering_async_sync_test {int buffer_audio; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_id ;


 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static void bast_buffer_audio(void *data, obs_hotkey_id id,
         obs_hotkey_t *hotkey, bool pressed)
{
 struct buffering_async_sync_test *bast = data;

 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);

 if (pressed)
  bast->buffer_audio = 1;
}
