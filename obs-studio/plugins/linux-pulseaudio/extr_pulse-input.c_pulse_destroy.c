
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* device; scalar_t__ stream; } ;


 int PULSE_DATA (void*) ;
 int bfree (TYPE_1__*) ;
 TYPE_1__* data ;
 int pulse_stop_recording (TYPE_1__*) ;
 int pulse_unref () ;

__attribute__((used)) static void pulse_destroy(void *vptr)
{
 PULSE_DATA(vptr);

 if (!data)
  return;

 if (data->stream)
  pulse_stop_recording(data);
 pulse_unref();

 if (data->device)
  bfree(data->device);
 bfree(data);
}
