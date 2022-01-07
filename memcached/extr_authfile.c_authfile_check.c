
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ulen; size_t plen; int pass; int user; } ;
typedef TYPE_1__ auth_t ;


 int entry_cnt ;
 TYPE_1__* main_auth_entries ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 size_t strlen (char const*) ;

int authfile_check(const char *user, const char *pass) {
    size_t ulen = strlen(user);
    size_t plen = strlen(pass);

    for (int x = 0; x < entry_cnt; x++) {
        auth_t *e = &main_auth_entries[x];
        if (ulen == e->ulen && plen == e->plen &&
            memcmp(user, e->user, e->ulen) == 0 &&
            memcmp(pass, e->pass, e->plen) == 0) {
            return 1;
        }
    }

    return 0;
}
