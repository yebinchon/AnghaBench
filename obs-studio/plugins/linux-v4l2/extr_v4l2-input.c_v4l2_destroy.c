
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int signal_handler_t ;
struct TYPE_5__ {struct TYPE_5__* device_id; } ;


 int V4L2_DATA (void*) ;
 int bfree (TYPE_1__*) ;
 TYPE_1__* data ;
 int device_added ;
 int device_removed ;
 int signal_handler_disconnect (int *,char*,int ,TYPE_1__*) ;
 int * v4l2_get_udev_signalhandler () ;
 int v4l2_terminate (TYPE_1__*) ;
 int v4l2_unref_udev () ;

__attribute__((used)) static void v4l2_destroy(void *vptr)
{
 V4L2_DATA(vptr);

 if (!data)
  return;

 v4l2_terminate(data);

 if (data->device_id)
  bfree(data->device_id);
 bfree(data);
}
