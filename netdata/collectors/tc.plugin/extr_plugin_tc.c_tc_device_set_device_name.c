
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_device {int name_updated; int * name; int * id; } ;


 int D_TC_LOOP ;
 int debug (int ,char*,int *,char*) ;
 int freez (int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ strcmp (int *,char*) ;
 int * strdupz (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void tc_device_set_device_name(struct tc_device *d, char *name) {
    if(unlikely(!name || !*name)) return;

    if(d->name) {
        if(!strcmp(d->name, name)) return;
        freez(d->name);
        d->name = ((void*)0);
    }

    if(likely(name && *name && strcmp(d->id, name) != 0)) {
        debug(D_TC_LOOP, "TC: Setting device '%s' name to '%s'", d->id, name);
        d->name = strdupz(name);
        d->name_updated = 1;
    }
}
