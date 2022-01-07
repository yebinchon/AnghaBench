
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_device {char enabled; struct tc_device* prev; struct tc_device* next; int id; int classes_index; int hash; } ;


 int D_TC_LOOP ;
 int avl_init (int *,int ) ;
 struct tc_device* callocz (int,int) ;
 int debug (int ,char*,char*) ;
 int error (char*,int ) ;
 int simple_hash (int ) ;
 int strdupz (char*) ;
 int tc_class_compare ;
 struct tc_device* tc_device_index_add (struct tc_device*) ;
 struct tc_device* tc_device_index_find (char*,int ) ;
 struct tc_device* tc_device_root ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct tc_device *tc_device_create(char *id)
{
    struct tc_device *d = tc_device_index_find(id, 0);

    if(!d) {
        debug(D_TC_LOOP, "TC: Creating device '%s'", id);

        d = callocz(1, sizeof(struct tc_device));

        d->id = strdupz(id);
        d->hash = simple_hash(d->id);
        d->enabled = (char)-1;

        avl_init(&d->classes_index, tc_class_compare);
        if(unlikely(tc_device_index_add(d) != d))
            error("plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.", d->id);

        if(!tc_device_root) {
            tc_device_root = d;
        }
        else {
            d->next = tc_device_root;
            tc_device_root->prev = d;
            tc_device_root = d;
        }
    }

    return(d);
}
