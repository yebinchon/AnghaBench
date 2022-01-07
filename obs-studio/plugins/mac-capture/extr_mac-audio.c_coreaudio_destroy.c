
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {struct coreaudio_data* device_uid; struct coreaudio_data* device_name; int exit_event; } ;


 int bfree (struct coreaudio_data*) ;
 int coreaudio_shutdown (struct coreaudio_data*) ;
 int os_event_destroy (int ) ;

__attribute__((used)) static void coreaudio_destroy(void *data)
{
 struct coreaudio_data *ca = data;

 if (ca) {
  coreaudio_shutdown(ca);

  os_event_destroy(ca->exit_event);
  bfree(ca->device_name);
  bfree(ca->device_uid);
  bfree(ca);
 }
}
