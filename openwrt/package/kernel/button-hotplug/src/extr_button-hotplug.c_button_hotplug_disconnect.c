
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct bh_priv* private; } ;
struct bh_priv {int dummy; } ;


 int input_close_device (struct input_handle*) ;
 int input_unregister_handle (struct input_handle*) ;
 int kfree (struct bh_priv*) ;

__attribute__((used)) static void button_hotplug_disconnect(struct input_handle *handle)
{
 struct bh_priv *priv = handle->private;

 input_close_device(handle);
 input_unregister_handle(handle);

 kfree(priv);
}
