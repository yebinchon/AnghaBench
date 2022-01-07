
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct cgroup_network_interface {scalar_t__ hash; char const* name; struct cgroup_network_interface* next; int len; } ;


 struct cgroup_network_interface* callocz (int,int) ;
 int network_interfaces_added ;
 struct cgroup_network_interface* network_interfaces_last_used ;
 struct cgroup_network_interface* network_interfaces_root ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,char const*) ;
 char const* strdupz (char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct cgroup_network_interface *get_network_interface(const char *name) {
    struct cgroup_network_interface *ifm;

    uint32_t hash = simple_hash(name);


    for(ifm = network_interfaces_last_used ; ifm ; ifm = ifm->next) {
        if (unlikely(hash == ifm->hash && !strcmp(name, ifm->name))) {
            network_interfaces_last_used = ifm->next;
            return ifm;
        }
    }


    for(ifm = network_interfaces_root ; ifm != network_interfaces_last_used ; ifm = ifm->next) {
        if (unlikely(hash == ifm->hash && !strcmp(name, ifm->name))) {
            network_interfaces_last_used = ifm->next;
            return ifm;
        }
    }


    ifm = callocz(1, sizeof(struct cgroup_network_interface));
    ifm->name = strdupz(name);
    ifm->hash = simple_hash(ifm->name);
    ifm->len = strlen(ifm->name);
    network_interfaces_added++;


    if (network_interfaces_root) {
        struct cgroup_network_interface *e;
        for(e = network_interfaces_root; e->next ; e = e->next) ;
        e->next = ifm;
    }
    else
        network_interfaces_root = ifm;

    return ifm;
}
