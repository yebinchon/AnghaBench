
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_device {struct tc_device* family; struct tc_device* name; struct tc_device* id; scalar_t__ classes; struct tc_device* prev; struct tc_device* next; } ;


 int error (char*,struct tc_device*) ;
 int freez (struct tc_device*) ;
 int tc_class_free (struct tc_device*,scalar_t__) ;
 struct tc_device* tc_device_index_del (struct tc_device*) ;
 struct tc_device* tc_device_root ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void tc_device_free(struct tc_device *n)
{
    if(n->next) n->next->prev = n->prev;
    if(n->prev) n->prev->next = n->next;
    if(tc_device_root == n) {
        if(n->next) tc_device_root = n->next;
        else tc_device_root = n->prev;
    }

    if(unlikely(tc_device_index_del(n) != n))
        error("plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.", n->id);

    while(n->classes) tc_class_free(n, n->classes);

    freez(n->id);
    freez(n->name);
    freez(n->family);
    freez(n);
}
