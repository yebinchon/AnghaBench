
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jack_data {int jack_mutex; struct jack_data* device; } ;


 int bfree (struct jack_data*) ;
 int deactivate_jack (struct jack_data*) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void jack_destroy(void *vptr)
{
 struct jack_data *data = (struct jack_data *)vptr;

 if (!data)
  return;

 deactivate_jack(data);

 if (data->device)
  bfree(data->device);
 pthread_mutex_destroy(&data->jack_mutex);
 bfree(data);
}
