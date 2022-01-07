
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int num_active_sections; struct active_section* active_sections; } ;
struct active_section {int name; } ;


 int MP_TARRAY_REMOVE_AT (struct active_section*,int,int) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 char* normalize_section (struct input_ctx*,char*) ;
 scalar_t__ strcmp (int ,char*) ;

void mp_input_disable_section(struct input_ctx *ictx, char *name)
{
    input_lock(ictx);
    name = normalize_section(ictx, name);


    for (int i = ictx->num_active_sections - 1; i >= 0; i--) {
        struct active_section *as = &ictx->active_sections[i];
        if (strcmp(as->name, name) == 0) {
            MP_TARRAY_REMOVE_AT(ictx->active_sections,
                                ictx->num_active_sections, i);
        }
    }
    input_unlock(ictx);
}
