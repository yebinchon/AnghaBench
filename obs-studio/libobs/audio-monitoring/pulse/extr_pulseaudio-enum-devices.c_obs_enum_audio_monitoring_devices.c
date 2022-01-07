
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_cb {int cont; void* data; int cb; } ;
typedef int pa_source_info_cb_t ;
typedef int obs_enum_audio_device_cb ;


 int bfree (struct enum_cb*) ;
 struct enum_cb* bzalloc (int) ;
 int pulseaudio_get_source_info_list (int ,void*) ;
 int pulseaudio_init () ;
 int pulseaudio_output_info ;
 int pulseaudio_unref () ;

void obs_enum_audio_monitoring_devices(obs_enum_audio_device_cb cb, void *data)
{
 struct enum_cb *ecb = bzalloc(sizeof(struct enum_cb));
 ecb->cb = cb;
 ecb->data = data;
 ecb->cont = 1;

 pulseaudio_init();
 pa_source_info_cb_t pa_cb = pulseaudio_output_info;
 pulseaudio_get_source_info_list(pa_cb, (void *)ecb);
 pulseaudio_unref();

 bfree(ecb);
}
