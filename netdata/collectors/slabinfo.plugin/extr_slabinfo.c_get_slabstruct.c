
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct slabinfo {scalar_t__ hash; struct slabinfo* next; int name; } ;


 struct slabinfo* callocz (int,int) ;
 scalar_t__ simple_hash (char const*) ;
 int slabdebug (char*,...) ;
 struct slabinfo* slabinfo_last_used ;
 struct slabinfo* slabinfo_next ;
 struct slabinfo* slabinfo_root ;
 int strcmp (char const*,int ) ;
 int strdupz (char const*) ;

__attribute__((used)) static struct slabinfo *get_slabstruct(const char *name) {
    struct slabinfo *s;

    slabdebug("--> Requested slabstruct %s", name);

    uint32_t hash = simple_hash(name);


    for (s = slabinfo_next; s; s = s->next) {
        if ((hash = s->hash) && !strcmp(name, s->name)) {
            slabdebug("<-- Found existing slabstruct after %s", slabinfo_last_used->name);

            slabinfo_next = s->next;
            slabinfo_last_used = s;
            return s;
        }
    }


    for (s = slabinfo_root; s != slabinfo_last_used; s = s->next) {
        if (hash == s->hash && !strcmp(name, s->name)) {
            slabdebug("<-- Found existing slabstruct after root %s", slabinfo_root->name);
            slabinfo_next = s->next;
            slabinfo_last_used = s;
            return s;
        }
    }


    s = callocz(1, sizeof(struct slabinfo));
    s->name = strdupz(name);
    s->hash = hash;


    if (slabinfo_root) {
        slabdebug("<-- Creating new slabstruct after %s", slabinfo_last_used->name);
        s->next = slabinfo_last_used->next;
        slabinfo_last_used->next = s;
        slabinfo_last_used = s;
    }
    else {
        slabdebug("<-- Creating new slabstruct as root");
        slabinfo_root = slabinfo_last_used = s;
    }

    return s;
}
