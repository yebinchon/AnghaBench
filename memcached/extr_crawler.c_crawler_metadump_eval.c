
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {scalar_t__ exptime; scalar_t__ time; int it_flags; int nkey; } ;
typedef TYPE_2__ item ;
struct TYPE_12__ {int buf; int cbuf; } ;
struct TYPE_14__ {TYPE_1__ c; } ;
typedef TYPE_3__ crawler_module_t ;


 int ITEM_FETCHED ;
 int ITEM_clsid (TYPE_2__*) ;
 scalar_t__ ITEM_get_cas (TYPE_2__*) ;
 int ITEM_key (TYPE_2__*) ;
 scalar_t__ ITEM_ntotal (TYPE_2__*) ;
 int KEY_MAX_URI_ENCODED_LENGTH ;
 int LRU_CRAWLER_WRITEBUF ;
 int bipbuf_push (int ,int) ;
 scalar_t__ current_time ;
 int item_is_flushed (TYPE_2__*) ;
 scalar_t__ process_started ;
 int refcount_decr (TYPE_2__*) ;
 int snprintf (int ,int,char*,char*,int,unsigned long long,unsigned long long,char*,int ,unsigned long) ;
 int uriencode (int ,char*,int ,int) ;

__attribute__((used)) static void crawler_metadump_eval(crawler_module_t *cm, item *it, uint32_t hv, int i) {

    char keybuf[KEY_MAX_URI_ENCODED_LENGTH];
    int is_flushed = item_is_flushed(it);

    if ((it->exptime != 0 && it->exptime < current_time)
        || is_flushed) {
        refcount_decr(it);
        return;
    }

    uriencode(ITEM_key(it), keybuf, it->nkey, KEY_MAX_URI_ENCODED_LENGTH);
    int total = snprintf(cm->c.cbuf, 4096,
            "key=%s exp=%ld la=%llu cas=%llu fetch=%s cls=%u size=%lu\n",
            keybuf,
            (it->exptime == 0) ? -1 : (long)(it->exptime + process_started),
            (unsigned long long)(it->time + process_started),
            (unsigned long long)ITEM_get_cas(it),
            (it->it_flags & ITEM_FETCHED) ? "yes" : "no",
            ITEM_clsid(it),
            (unsigned long) ITEM_ntotal(it));
    refcount_decr(it);

    if (total >= LRU_CRAWLER_WRITEBUF - 1 || total <= 0) {

        return;
    }
    bipbuf_push(cm->c.buf, total);
}
