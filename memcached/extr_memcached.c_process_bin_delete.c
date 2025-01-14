
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_32__ {int cas; } ;
struct TYPE_33__ {TYPE_3__ request; } ;
struct TYPE_34__ {TYPE_4__ header; } ;
struct TYPE_38__ {TYPE_5__ message; } ;
typedef TYPE_9__ protocol_binary_request_delete ;
struct TYPE_27__ {int nkey; } ;
typedef TYPE_10__ item ;
struct TYPE_30__ {size_t keylen; } ;
struct TYPE_31__ {TYPE_1__ request; } ;
struct TYPE_28__ {TYPE_8__* thread; int sfd; TYPE_2__ binary_header; } ;
typedef TYPE_11__ conn ;
struct TYPE_36__ {int mutex; int delete_misses; TYPE_6__* slab_stats; } ;
struct TYPE_37__ {TYPE_7__ stats; int storage; } ;
struct TYPE_35__ {int delete_hits; } ;
struct TYPE_29__ {int verbose; scalar_t__ detail_enabled; } ;


 int DONT_UPDATE ;
 size_t ITEM_clsid (TYPE_10__*) ;
 scalar_t__ ITEM_get_cas (TYPE_10__*) ;
 int ITEM_key (TYPE_10__*) ;
 int MEMCACHED_COMMAND_DELETE (int ,int ,int ) ;
 int PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS ;
 int PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ;
 int STORAGE_delete (int ,TYPE_10__*) ;
 int assert (int ) ;
 char* binary_get_key (TYPE_11__*) ;
 TYPE_9__* binary_get_request (TYPE_11__*) ;
 int do_item_remove (TYPE_10__*) ;
 int do_item_unlink (TYPE_10__*,int ) ;
 int fprintf (int ,char*,...) ;
 TYPE_10__* item_get_locked (char*,size_t,TYPE_11__*,int ,int *) ;
 int item_unlock (int ) ;
 scalar_t__ ntohll (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_14__ settings ;
 int stats_prefix_record_delete (char*,size_t) ;
 int stderr ;
 int write_bin_error (TYPE_11__*,int ,int *,int ) ;
 int write_bin_response (TYPE_11__*,int *,int ,int ,int ) ;

__attribute__((used)) static void process_bin_delete(conn *c) {
    item *it;
    uint32_t hv;

    protocol_binary_request_delete* req = binary_get_request(c);

    char* key = binary_get_key(c);
    size_t nkey = c->binary_header.request.keylen;

    assert(c != ((void*)0));

    if (settings.verbose > 1) {
        int ii;
        fprintf(stderr, "Deleting ");
        for (ii = 0; ii < nkey; ++ii) {
            fprintf(stderr, "%c", key[ii]);
        }
        fprintf(stderr, "\n");
    }

    if (settings.detail_enabled) {
        stats_prefix_record_delete(key, nkey);
    }

    it = item_get_locked(key, nkey, c, DONT_UPDATE, &hv);
    if (it) {
        uint64_t cas = ntohll(req->message.header.request.cas);
        if (cas == 0 || cas == ITEM_get_cas(it)) {
            MEMCACHED_COMMAND_DELETE(c->sfd, ITEM_key(it), it->nkey);
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.slab_stats[ITEM_clsid(it)].delete_hits++;
            pthread_mutex_unlock(&c->thread->stats.mutex);
            do_item_unlink(it, hv);
            STORAGE_delete(c->thread->storage, it);
            write_bin_response(c, ((void*)0), 0, 0, 0);
        } else {
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, ((void*)0), 0);
        }
        do_item_remove(it);
    } else {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, ((void*)0), 0);
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.delete_misses++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
    }
    item_unlock(hv);
}
