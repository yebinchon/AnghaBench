
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int dummy; } ;
typedef int obs_source_t ;


 int UNUSED_PARAMETER (int *) ;

struct audio_monitor *audio_monitor_create(obs_source_t *source)
{
 UNUSED_PARAMETER(source);
 return ((void*)0);
}
