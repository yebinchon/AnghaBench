
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int it_flags; } ;
typedef TYPE_3__ item ;
struct TYPE_15__ {int keylen; int bodylen; int cas; } ;
struct TYPE_16__ {TYPE_1__ request; } ;
struct TYPE_18__ {int sbytes; int cmd; int rlbytes; int substate; void* ritem; TYPE_3__* item; TYPE_2__ binary_header; int write_and_go; } ;
typedef TYPE_4__ conn ;
struct TYPE_19__ {int verbose; scalar_t__ detail_enabled; } ;


 int ITEM_CHUNKED ;
 void* ITEM_data (TYPE_3__*) ;
 void* ITEM_schunk (TYPE_3__*) ;
 int ITEM_set_cas (TYPE_3__*,int ) ;
 int NREAD_APPEND ;
 int NREAD_PREPEND ;


 int PROTOCOL_BINARY_RESPONSE_E2BIG ;
 int assert (int ) ;
 int bin_read_set_value ;
 char* binary_get_key (TYPE_4__*) ;
 int conn_nread ;
 int conn_set_state (TYPE_4__*,int ) ;
 int conn_swallow ;
 int fprintf (int ,char*,int) ;
 TYPE_3__* item_alloc (char*,int,int ,int ,int) ;
 int item_size_ok (int,int ,int) ;
 int out_of_memory (TYPE_4__*,char*) ;
 TYPE_6__ settings ;
 int stats_prefix_record_set (char*,int) ;
 int stderr ;
 int write_bin_error (TYPE_4__*,int ,int *,int) ;

__attribute__((used)) static void process_bin_append_prepend(conn *c) {
    char *key;
    int nkey;
    int vlen;
    item *it;

    assert(c != ((void*)0));

    key = binary_get_key(c);
    nkey = c->binary_header.request.keylen;
    vlen = c->binary_header.request.bodylen - nkey;

    if (settings.verbose > 1) {
        fprintf(stderr, "Value len is %d\n", vlen);
    }

    if (settings.detail_enabled) {
        stats_prefix_record_set(key, nkey);
    }

    it = item_alloc(key, nkey, 0, 0, vlen+2);

    if (it == 0) {
        if (! item_size_ok(nkey, 0, vlen + 2)) {
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_E2BIG, ((void*)0), vlen);
        } else {
            out_of_memory(c, "SERVER_ERROR Out of memory allocating item");

            c->sbytes = vlen;
        }

        c->write_and_go = conn_swallow;
        return;
    }

    ITEM_set_cas(it, c->binary_header.request.cas);

    switch (c->cmd) {
        case 129:
            c->cmd = NREAD_APPEND;
            break;
        case 128:
            c->cmd = NREAD_PREPEND;
            break;
        default:
            assert(0);
    }

    c->item = it;







    c->ritem = ITEM_data(it);

    c->rlbytes = vlen;
    conn_set_state(c, conn_nread);
    c->substate = bin_read_set_value;
}
