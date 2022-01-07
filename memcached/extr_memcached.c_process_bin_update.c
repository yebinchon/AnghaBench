
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct TYPE_29__ {void* expiration; void* flags; } ;
struct TYPE_30__ {TYPE_1__ body; } ;
struct TYPE_34__ {TYPE_2__ message; } ;
typedef TYPE_6__ protocol_binary_request_set ;
struct TYPE_35__ {int it_flags; } ;
typedef TYPE_7__ item ;
typedef enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
struct TYPE_32__ {int keylen; int bodylen; int extlen; int cas; } ;
struct TYPE_33__ {TYPE_4__ request; } ;
struct TYPE_36__ {int cmd; int sfd; int sbytes; int rlbytes; int substate; void* ritem; TYPE_7__* item; TYPE_5__ binary_header; int write_and_go; TYPE_3__* thread; } ;
typedef TYPE_8__ conn ;
struct TYPE_31__ {int storage; int l; } ;
struct TYPE_28__ {int verbose; scalar_t__ detail_enabled; } ;


 int DONT_UPDATE ;
 int ITEM_CHUNKED ;
 int ITEM_clsid (TYPE_7__*) ;
 void* ITEM_data (TYPE_7__*) ;
 scalar_t__ ITEM_get_cas (TYPE_7__*) ;
 void* ITEM_schunk (TYPE_7__*) ;
 int ITEM_set_cas (TYPE_7__*,int ) ;
 int LOGGER_ITEM_STORE ;
 int LOGGER_LOG (int ,int ,int ,int *,int,int ,char*,int,void*,int ,int) ;
 int LOG_MUTATIONS ;
 int NO_MEMORY ;
 int NREAD_ADD ;
 int NREAD_CAS ;
 int NREAD_REPLACE ;
 int NREAD_SET ;



 int PROTOCOL_BINARY_RESPONSE_E2BIG ;
 int STORAGE_delete (int ,TYPE_7__*) ;
 int TOO_LARGE ;
 int assert (int ) ;
 int bin_read_set_value ;
 char* binary_get_key (TYPE_8__*) ;
 TYPE_6__* binary_get_request (TYPE_8__*) ;
 int conn_nread ;
 int conn_set_state (TYPE_8__*,int ) ;
 int conn_swallow ;
 int fprintf (int ,char*,...) ;
 TYPE_7__* item_alloc (char*,int,void*,int ,int) ;
 TYPE_7__* item_get (char*,int,TYPE_8__*,int ) ;
 int item_remove (TYPE_7__*) ;
 int item_size_ok (int,void*,int) ;
 int item_unlink (TYPE_7__*) ;
 void* ntohl (void*) ;
 int out_of_memory (TYPE_8__*,char*) ;
 int realtime (void*) ;
 TYPE_10__ settings ;
 int stats_prefix_record_set (char*,int) ;
 int stderr ;
 int write_bin_error (TYPE_8__*,int ,int *,int) ;

__attribute__((used)) static void process_bin_update(conn *c) {
    char *key;
    int nkey;
    int vlen;
    item *it;
    protocol_binary_request_set* req = binary_get_request(c);

    assert(c != ((void*)0));

    key = binary_get_key(c);
    nkey = c->binary_header.request.keylen;


    req->message.body.flags = ntohl(req->message.body.flags);
    req->message.body.expiration = ntohl(req->message.body.expiration);

    vlen = c->binary_header.request.bodylen - (nkey + c->binary_header.request.extlen);

    if (settings.verbose > 1) {
        int ii;
        if (c->cmd == 130) {
            fprintf(stderr, "<%d ADD ", c->sfd);
        } else if (c->cmd == 128) {
            fprintf(stderr, "<%d SET ", c->sfd);
        } else {
            fprintf(stderr, "<%d REPLACE ", c->sfd);
        }
        for (ii = 0; ii < nkey; ++ii) {
            fprintf(stderr, "%c", key[ii]);
        }

        fprintf(stderr, " Value len is %d", vlen);
        fprintf(stderr, "\n");
    }

    if (settings.detail_enabled) {
        stats_prefix_record_set(key, nkey);
    }

    it = item_alloc(key, nkey, req->message.body.flags,
            realtime(req->message.body.expiration), vlen+2);

    if (it == 0) {
        enum store_item_type status;
        if (! item_size_ok(nkey, req->message.body.flags, vlen + 2)) {
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_E2BIG, ((void*)0), vlen);
            status = TOO_LARGE;
        } else {
            out_of_memory(c, "SERVER_ERROR Out of memory allocating item");

            c->sbytes = vlen;
            status = NO_MEMORY;
        }

        LOGGER_LOG(c->thread->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
                ((void*)0), status, 0, key, nkey, req->message.body.expiration,
                ITEM_clsid(it), c->sfd);



        if (c->cmd == 128) {
            it = item_get(key, nkey, c, DONT_UPDATE);
            if (it) {
                item_unlink(it);
                STORAGE_delete(c->thread->storage, it);
                item_remove(it);
            }
        }


        c->write_and_go = conn_swallow;
        return;
    }

    ITEM_set_cas(it, c->binary_header.request.cas);

    switch (c->cmd) {
        case 130:
            c->cmd = NREAD_ADD;
            break;
        case 128:
            c->cmd = NREAD_SET;
            break;
        case 129:
            c->cmd = NREAD_REPLACE;
            break;
        default:
            assert(0);
    }

    if (ITEM_get_cas(it) != 0) {
        c->cmd = NREAD_CAS;
    }

    c->item = it;







    c->ritem = ITEM_data(it);

    c->rlbytes = vlen;
    conn_set_state(c, conn_nread);
    c->substate = bin_read_set_value;
}
