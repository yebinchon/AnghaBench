
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {size_t length; char* value; } ;
typedef TYPE_3__ token_t ;
struct TYPE_20__ {int nkey; scalar_t__ exptime; int time; int it_flags; } ;
typedef TYPE_4__ item ;
struct TYPE_21__ {char* wbuf; size_t wbytes; char* wcurr; TYPE_2__* thread; int write_and_go; scalar_t__ wsize; } ;
typedef TYPE_5__ conn ;
struct TYPE_17__ {int mutex; int meta_cmds; } ;
struct TYPE_18__ {TYPE_1__ stats; } ;


 int DONT_UPDATE ;
 int ITEM_FETCHED ;
 int ITEM_clsid (TYPE_4__*) ;
 scalar_t__ ITEM_get_cas (TYPE_4__*) ;
 char* ITEM_key (TYPE_4__*) ;
 scalar_t__ ITEM_ntotal (TYPE_4__*) ;
 size_t KEY_MAX_LENGTH ;
 size_t KEY_TOKEN ;
 int assert (int ) ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_5__*,int ) ;
 int conn_write ;
 int current_time ;
 int item_remove (TYPE_4__*) ;
 TYPE_4__* limited_get (char*,size_t,TYPE_5__*,int ,int,int ) ;
 int memcpy (char*,char*,int) ;
 int out_string (TYPE_5__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t snprintf (char*,scalar_t__,char*,int,unsigned long long,unsigned long long,char*,int ,unsigned long) ;

__attribute__((used)) static void process_meta_command(conn *c, token_t *tokens, const size_t ntokens) {
    assert(c != ((void*)0));

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        out_string(c, "CLIENT_ERROR bad command line format");
        return;
    }

    char *key = tokens[KEY_TOKEN].value;
    size_t nkey = tokens[KEY_TOKEN].length;

    item *it = limited_get(key, nkey, c, 0, 0, DONT_UPDATE);
    if (it) {
        size_t total = 0;
        size_t ret;

        memcpy(c->wbuf, "ME ", 3);
        total += 3;
        memcpy(c->wbuf + total, ITEM_key(it), it->nkey);
        total += it->nkey;
        c->wbuf[total] = ' ';
        total++;

        ret = snprintf(c->wbuf + total, c->wsize - (it->nkey + 12),
                "exp=%d la=%llu cas=%llu fetch=%s cls=%u size=%lu\r\nEN\r\n",
                (it->exptime == 0) ? -1 : (current_time - it->exptime),
                (unsigned long long)(current_time - it->time),
                (unsigned long long)ITEM_get_cas(it),
                (it->it_flags & ITEM_FETCHED) ? "yes" : "no",
                ITEM_clsid(it),
                (unsigned long) ITEM_ntotal(it));

        item_remove(it);
        c->wbytes = total + ret;
        c->wcurr = c->wbuf;
        conn_set_state(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        out_string(c, "EN");
    }
    pthread_mutex_lock(&c->thread->stats.mutex);
    c->thread->stats.meta_cmds++;
    pthread_mutex_unlock(&c->thread->stats.mutex);
}
