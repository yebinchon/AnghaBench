
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct disk {scalar_t__ hash; char const* name; struct disk* next; int len; } ;


 struct disk* callocz (int,int) ;
 int disks_added ;
 struct disk* disks_last_used ;
 struct disk* disks_root ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,char const*) ;
 char const* strdupz (char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct disk *get_disk(const char *name) {
    struct disk *dm;

    uint32_t hash = simple_hash(name);


    for(dm = disks_last_used ; dm ; dm = dm->next) {
        if (unlikely(hash == dm->hash && !strcmp(name, dm->name))) {
            disks_last_used = dm->next;
            return dm;
        }
    }


    for(dm = disks_root ; dm != disks_last_used ; dm = dm->next) {
        if (unlikely(hash == dm->hash && !strcmp(name, dm->name))) {
            disks_last_used = dm->next;
            return dm;
        }
    }


    dm = callocz(1, sizeof(struct disk));
    dm->name = strdupz(name);
    dm->hash = simple_hash(dm->name);
    dm->len = strlen(dm->name);
    disks_added++;


    if (disks_root) {
        struct disk *e;
        for(e = disks_root; e->next ; e = e->next) ;
        e->next = dm;
    }
    else
        disks_root = dm;

    return dm;
}
