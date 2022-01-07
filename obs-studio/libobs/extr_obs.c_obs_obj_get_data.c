
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {void* data; } ;



void *obs_obj_get_data(void *obj)
{
 struct obs_context_data *context = obj;
 if (!context)
  return ((void*)0);

 return context->data;
}
