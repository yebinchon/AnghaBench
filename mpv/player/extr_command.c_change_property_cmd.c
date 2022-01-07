
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {int mpctx; } ;


 int mp_property_do (char const*,int,void*,int ) ;
 int show_property_status (struct mp_cmd_ctx*,char const*,int) ;

__attribute__((used)) static void change_property_cmd(struct mp_cmd_ctx *cmd,
                                const char *name, int action, void *arg)
{
    int r = mp_property_do(name, action, arg, cmd->mpctx);
    show_property_status(cmd, name, r);
}
