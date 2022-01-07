
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {size_t length; char* value; } ;
typedef TYPE_4__ token_t ;
typedef int item ;
typedef int int32_t ;
struct TYPE_16__ {TYPE_3__* thread; } ;
typedef TYPE_5__ conn ;
struct TYPE_13__ {int mutex; int touch_misses; int touch_cmds; TYPE_1__* slab_stats; } ;
struct TYPE_14__ {TYPE_2__ stats; } ;
struct TYPE_12__ {int touch_hits; } ;


 size_t ITEM_clsid (int *) ;
 size_t KEY_MAX_LENGTH ;
 size_t KEY_TOKEN ;
 int assert (int ) ;
 int item_remove (int *) ;
 int * item_touch (char*,size_t,int ,TYPE_5__*) ;
 int out_string (TYPE_5__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int realtime (int ) ;
 int safe_strtol (char*,int *) ;
 int set_noreply_maybe (TYPE_5__*,TYPE_4__*,size_t const) ;

__attribute__((used)) static void process_touch_command(conn *c, token_t *tokens, const size_t ntokens) {
    char *key;
    size_t nkey;
    int32_t exptime_int = 0;
    item *it;

    assert(c != ((void*)0));

    set_noreply_maybe(c, tokens, ntokens);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        out_string(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    if (!safe_strtol(tokens[2].value, &exptime_int)) {
        out_string(c, "CLIENT_ERROR invalid exptime argument");
        return;
    }

    it = item_touch(key, nkey, realtime(exptime_int), c);
    if (it) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.touch_cmds++;
        c->thread->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
        pthread_mutex_unlock(&c->thread->stats.mutex);

        out_string(c, "TOUCHED");
        item_remove(it);
    } else {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.touch_cmds++;
        c->thread->stats.touch_misses++;
        pthread_mutex_unlock(&c->thread->stats.mutex);

        out_string(c, "NOT_FOUND");
    }
}
