
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {char* priv; scalar_t__ name; } ;
struct command_ctx {int num_warned_deprecated; int * warned_deprecated; } ;
struct TYPE_3__ {struct command_ctx* command_ctx; } ;
typedef TYPE_1__ MPContext ;


 int MP_TARRAY_APPEND (struct command_ctx*,int *,int,char*) ;
 int MP_WARN (TYPE_1__*,char*,scalar_t__,char const*) ;
 int mp_property_do (char const*,int,void*,void*) ;
 scalar_t__ strcmp (int ,scalar_t__) ;

__attribute__((used)) static int mp_property_deprecated_alias(void *ctx, struct m_property *prop,
                                        int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;
    const char *real_property = prop->priv;
    for (int n = 0; n < cmd->num_warned_deprecated; n++) {
        if (strcmp(cmd->warned_deprecated[n], prop->name) == 0)
            goto done;
    }
    MP_WARN(mpctx, "Warning: property '%s' was replaced with '%s' and "
            "might be removed in the future.\n", prop->name, real_property);
    MP_TARRAY_APPEND(cmd, cmd->warned_deprecated, cmd->num_warned_deprecated,
                     (char *)prop->name);

done:
    return mp_property_do(real_property, action, arg, ctx);
}
