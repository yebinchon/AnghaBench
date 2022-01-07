
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;
struct command_ctx {int hotplug; } ;
struct ao_device_list {int num_devices; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 struct ao_device_list* ao_hotplug_get_device_list (int ) ;
 int create_hotplug (struct MPContext*) ;
 int get_device_entry ;
 int m_property_read_list (int,void*,int ,int ,struct ao_device_list*) ;

__attribute__((used)) static int mp_property_audio_devices(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;
    create_hotplug(mpctx);

    struct ao_device_list *list = ao_hotplug_get_device_list(cmd->hotplug);
    return m_property_read_list(action, arg, list->num_devices,
                                get_device_entry, list);
}
