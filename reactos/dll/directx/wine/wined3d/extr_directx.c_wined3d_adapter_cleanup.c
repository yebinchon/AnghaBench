
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int formats; } ;
struct wined3d_adapter {int cfgs; TYPE_1__ gl_info; } ;


 int heap_free (int ) ;

__attribute__((used)) static void wined3d_adapter_cleanup(struct wined3d_adapter *adapter)
{
    heap_free(adapter->gl_info.formats);
    heap_free(adapter->cfgs);
}
