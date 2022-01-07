
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mount_point {scalar_t__ hash; char const* name; struct mount_point* next; int len; } ;


 struct mount_point* callocz (int,int) ;
 int mount_points_added ;
 struct mount_point* mount_points_last_used ;
 struct mount_point* mount_points_root ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,char const*) ;
 char const* strdupz (char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct mount_point *get_mount_point(const char *name) {
    struct mount_point *m;

    uint32_t hash = simple_hash(name);


    for(m = mount_points_last_used ; m ; m = m->next) {
        if (unlikely(hash == m->hash && !strcmp(name, m->name))) {
            mount_points_last_used = m->next;
            return m;
        }
    }


    for(m = mount_points_root ; m != mount_points_last_used ; m = m->next) {
        if (unlikely(hash == m->hash && !strcmp(name, m->name))) {
            mount_points_last_used = m->next;
            return m;
        }
    }


    m = callocz(1, sizeof(struct mount_point));
    m->name = strdupz(name);
    m->hash = simple_hash(m->name);
    m->len = strlen(m->name);
    mount_points_added++;


    if (mount_points_root) {
        struct mount_point *e;
        for(e = mount_points_root; e->next ; e = e->next) ;
        e->next = m;
    }
    else
        mount_points_root = m;

    return m;
}
