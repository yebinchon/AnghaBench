
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;
struct command_ctx {int hotplug; } ;
struct ao_device_list {int num_devices; struct ao_device_desc* devices; } ;
struct ao_device_desc {char* desc; scalar_t__ name; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 int M_PROPERTY_GET ;
 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 struct ao_device_list* ao_hotplug_get_device_list (int ) ;
 int create_hotplug (struct MPContext*) ;
 int mp_property_generic_option (struct MPContext*,struct m_property*,int,void*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static int mp_property_audio_device(void *ctx, struct m_property *prop,
                                    int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;
    if (action == M_PROPERTY_PRINT) {
        create_hotplug(mpctx);

        char *name = ((void*)0);
        if (mp_property_generic_option(mpctx, prop, M_PROPERTY_GET, &name) < 1)
            name = ((void*)0);

        struct ao_device_list *list = ao_hotplug_get_device_list(cmd->hotplug);
        for (int n = 0; n < list->num_devices; n++) {
            struct ao_device_desc *dev = &list->devices[n];
            if (dev->name && name && strcmp(dev->name, name) == 0) {
                *(char **)arg = talloc_strdup(((void*)0), dev->desc ? dev->desc : "?");
                talloc_free(name);
                return M_PROPERTY_OK;
            }
        }

        talloc_free(name);
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
