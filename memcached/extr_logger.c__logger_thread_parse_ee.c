
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct logentry_eviction {int it_flags; int clsid; int latime; scalar_t__ exptime; int nkey; int key; } ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {TYPE_1__ tv; scalar_t__ gid; scalar_t__ data; } ;
typedef TYPE_2__ logentry ;


 int ITEM_FETCHED ;
 int KEY_MAX_URI_ENCODED_LENGTH ;
 int LOGGER_PARSE_SCRATCH ;
 int snprintf (char*,int ,char*,int,int,unsigned long long,char*,char*,long long,int ,int ) ;
 int uriencode (int ,char*,int ,int) ;

__attribute__((used)) static int _logger_thread_parse_ee(logentry *e, char *scratch) {
    int total;
    char keybuf[KEY_MAX_URI_ENCODED_LENGTH];
    struct logentry_eviction *le = (struct logentry_eviction *) e->data;
    uriencode(le->key, keybuf, le->nkey, KEY_MAX_URI_ENCODED_LENGTH);
    total = snprintf(scratch, LOGGER_PARSE_SCRATCH,
            "ts=%d.%d gid=%llu type=eviction key=%s fetch=%s ttl=%lld la=%d clsid=%u\n",
            (int)e->tv.tv_sec, (int)e->tv.tv_usec, (unsigned long long) e->gid,
            keybuf, (le->it_flags & ITEM_FETCHED) ? "yes" : "no",
            (long long int)le->exptime, le->latime, le->clsid);

    return total;
}
