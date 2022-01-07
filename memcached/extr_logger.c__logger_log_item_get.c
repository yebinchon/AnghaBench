
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct logentry_item_get {int was_found; int nkey; int sfd; int key; int clsid; } ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ logentry ;


 int memcpy (int ,char const*,int const) ;

__attribute__((used)) static void _logger_log_item_get(logentry *e, const int was_found, const char *key,
        const int nkey, const uint8_t clsid, const int sfd) {
    struct logentry_item_get *le = (struct logentry_item_get *) e->data;
    le->was_found = was_found;
    le->nkey = nkey;
    le->clsid = clsid;
    memcpy(le->key, key, nkey);
    le->sfd = sfd;
    e->size = sizeof(struct logentry_item_get) + nkey;
}
