
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {int nkey; int nbytes; } ;
typedef TYPE_5__ item ;
struct TYPE_17__ {int keylen; int bodylen; } ;
struct TYPE_18__ {TYPE_1__ request; } ;
struct TYPE_22__ {int item; int cmd; int sasl_started; int sfd; int authenticated; TYPE_4__* thread; void* write_and_go; int sasl_conn; TYPE_2__ binary_header; } ;
typedef TYPE_6__ conn ;
struct TYPE_23__ {int sasl; scalar_t__ verbose; } ;
struct TYPE_19__ {int mutex; int auth_errors; int auth_cmds; } ;
struct TYPE_20__ {TYPE_3__ stats; } ;


 char* ITEM_data (TYPE_5__*) ;
 int ITEM_key (TYPE_5__*) ;


 int PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE ;
 int PROTOCOL_BINARY_RESPONSE_AUTH_ERROR ;
 int PROTOCOL_BINARY_RESPONSE_EINVAL ;


 int add_bin_header (TYPE_6__*,int ,int ,int ,unsigned int) ;
 int add_iov (TYPE_6__*,char const*,unsigned int) ;
 int assert (int) ;
 int conn_mwrite ;
 void* conn_new_cmd ;
 int conn_set_state (TYPE_6__*,int ) ;
 void* conn_swallow ;
 int fprintf (int ,char*,...) ;
 int init_sasl_conn (TYPE_6__*) ;
 int item_unlink (int) ;
 int memcpy (char*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sasl_server_start (int ,char*,char const*,int,char const**,unsigned int*) ;
 int sasl_server_step (int ,char const*,int,char const**,unsigned int*) ;
 TYPE_9__ settings ;
 int stderr ;
 int strlen (char*) ;
 int write_bin_error (TYPE_6__*,int ,int *,int) ;
 int write_bin_response (TYPE_6__*,char*,int ,int ,int ) ;

__attribute__((used)) static void process_bin_complete_sasl_auth(conn *c) {
    assert(settings.sasl);
    const char *out = ((void*)0);
    unsigned int outlen = 0;

    assert(c->item);
    init_sasl_conn(c);

    int nkey = c->binary_header.request.keylen;
    int vlen = c->binary_header.request.bodylen - nkey;

    if (nkey > ((item*) c->item)->nkey) {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_EINVAL, ((void*)0), vlen);
        c->write_and_go = conn_swallow;
        item_unlink(c->item);
        return;
    }

    char mech[nkey+1];
    memcpy(mech, ITEM_key((item*)c->item), nkey);
    mech[nkey] = 0x00;

    if (settings.verbose)
        fprintf(stderr, "mech:  ``%s'' with %d bytes of data\n", mech, vlen);

    const char *challenge = vlen == 0 ? ((void*)0) : ITEM_data((item*) c->item);

    if (vlen > ((item*) c->item)->nbytes) {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_EINVAL, ((void*)0), vlen);
        c->write_and_go = conn_swallow;
        item_unlink(c->item);
        return;
    }

    int result=-1;

    switch (c->cmd) {
    case 131:
        result = sasl_server_start(c->sasl_conn, mech,
                                   challenge, vlen,
                                   &out, &outlen);
        c->sasl_started = (result == 128 || result == 129);
        break;
    case 130:
        if (!c->sasl_started) {
            if (settings.verbose) {
                fprintf(stderr, "%d: SASL_STEP called but sasl_server_start "
                        "not called for this connection!\n", c->sfd);
            }
            break;
        }
        result = sasl_server_step(c->sasl_conn,
                                  challenge, vlen,
                                  &out, &outlen);
        break;
    default:
        assert(0);


        if (settings.verbose) {
            fprintf(stderr, "Unhandled command %d with challenge %s\n",
                    c->cmd, challenge);
        }
        break;
    }

    item_unlink(c->item);

    if (settings.verbose) {
        fprintf(stderr, "sasl result code:  %d\n", result);
    }

    switch(result) {
    case 128:
        c->authenticated = 1;
        write_bin_response(c, "Authenticated", 0, 0, strlen("Authenticated"));
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        break;
    case 129:
        add_bin_header(c, PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE, 0, 0, outlen);
        if(outlen > 0) {
            add_iov(c, out, outlen);
        }
        conn_set_state(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
        break;
    default:
        if (settings.verbose)
            fprintf(stderr, "Unknown sasl response:  %d\n", result);
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, ((void*)0), 0);
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        c->thread->stats.auth_errors++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
    }
}
