
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_sync_test ;
 int buffering_async_sync_test ;
 int obs_register_source (int *) ;
 int sync_audio ;
 int sync_video ;
 int test_filter ;
 int test_random ;
 int test_sinewave ;

bool obs_module_load(void)
{
 obs_register_source(&test_random);
 obs_register_source(&test_sinewave);
 obs_register_source(&test_filter);
 obs_register_source(&async_sync_test);
 obs_register_source(&buffering_async_sync_test);
 obs_register_source(&sync_video);
 obs_register_source(&sync_audio);
 return 1;
}
