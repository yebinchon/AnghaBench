
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct logentry_eviction {long long exptime; scalar_t__ latime; scalar_t__ nkey; int key; int clsid; int it_flags; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_1__ logentry ;
struct TYPE_8__ {scalar_t__ exptime; scalar_t__ time; scalar_t__ nkey; int it_flags; } ;
typedef TYPE_2__ item ;


 int ITEM_clsid (TYPE_2__*) ;
 int ITEM_key (TYPE_2__*) ;
 scalar_t__ current_time ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void _logger_log_evictions(logentry *e, item *it) {
    struct logentry_eviction *le = (struct logentry_eviction *) e->data;
    le->exptime = (it->exptime > 0) ? (long long int)(it->exptime - current_time) : (long long int) -1;
    le->latime = current_time - it->time;
    le->it_flags = it->it_flags;
    le->nkey = it->nkey;
    le->clsid = ITEM_clsid(it);
    memcpy(le->key, ITEM_key(it), it->nkey);
    e->size = sizeof(struct logentry_eviction) + le->nkey;
}
