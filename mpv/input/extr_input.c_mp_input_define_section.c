
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;
struct cmd_bind_section {scalar_t__ owner; scalar_t__ section; } ;


 int bstr0 (char*) ;
 struct cmd_bind_section* get_bind_section (struct input_ctx*,int ) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_disable_section (struct input_ctx*,char*) ;
 int parse_config (struct input_ctx*,int,int ,char*,char*) ;
 int remove_binds (struct cmd_bind_section*,int) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int talloc_free (scalar_t__) ;
 scalar_t__ talloc_strdup (struct cmd_bind_section*,char*) ;

void mp_input_define_section(struct input_ctx *ictx, char *name, char *location,
                             char *contents, bool builtin, char *owner)
{
    if (!name || !name[0])
        return;
    input_lock(ictx);

    struct cmd_bind_section *bs = get_bind_section(ictx, bstr0(name));
    if ((!bs->owner || (owner && strcmp(bs->owner, owner) != 0)) &&
        strcmp(bs->section, "default") != 0)
    {
        talloc_free(bs->owner);
        bs->owner = talloc_strdup(bs, owner);
    }
    remove_binds(bs, builtin);
    if (contents && contents[0]) {

        parse_config(ictx, builtin, bstr0(contents), location, name);
    } else {

        mp_input_disable_section(ictx, name);
    }
    input_unlock(ictx);
}
