
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {struct alsa_data* device; int abort_event; scalar_t__ handle; } ;


 int _alsa_close (struct alsa_data*) ;
 int bfree (struct alsa_data*) ;
 int os_event_destroy (int ) ;

void alsa_destroy(void *vptr)
{
 struct alsa_data *data = vptr;

 if (data->handle)
  _alsa_close(data);

 os_event_destroy(data->abort_event);
 bfree(data->device);
 bfree(data);
}
