
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fsm; int src; } ;
struct nn_ws_handshake {int mode; char const* resource; char const* remote_host; int recv_len; int fsm; scalar_t__ retries; scalar_t__ recv_pos; int response; int opening_hs; struct nn_pipebase* pipebase; struct nn_usock* usock; TYPE_1__ usock_owner; } ;
struct nn_usock {int dummy; } ;
struct nn_pipebase {int dummy; } ;



 int NN_WS_HANDSHAKE_SRC_USOCK ;

 int memset (int ,int ,int) ;
 int nn_assert (int) ;
 int nn_fsm_start (int *) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_1__*) ;
 int strlen (char const*) ;

void nn_ws_handshake_start (struct nn_ws_handshake *self,
    struct nn_usock *usock, struct nn_pipebase *pipebase,
    int mode, const char *resource, const char *host)
{

    if (mode == 129)
        nn_assert (strlen (resource) >= 1);


    nn_assert (self->usock == ((void*)0) && self->usock_owner.fsm == ((void*)0));
    self->usock_owner.src = NN_WS_HANDSHAKE_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    nn_usock_swap_owner (usock, &self->usock_owner);
    self->usock = usock;
    self->pipebase = pipebase;
    self->mode = mode;
    self->resource = resource;
    self->remote_host = host;

    memset (self->opening_hs, 0, sizeof (self->opening_hs));
    memset (self->response, 0, sizeof (self->response));

    self->recv_pos = 0;
    self->retries = 0;




    switch (self->mode) {
    case 128:
        self->recv_len = strlen (
            "GET x HTTP/1.1\r\n"
            "Upgrade: websocket\r\n"
            "Connection: Upgrade\r\n"
            "Host: x\r\n"
            "Origin: x\r\n"
            "Sec-WebSocket-Key: xxxxxxxxxxxxxxxxxxxxxxxx\r\n"
            "Sec-WebSocket-Version: xx\r\n\r\n");
        break;
    case 129:

        self->recv_len = strlen ("HTTP/1.1 xxx\r\n\r\n");
        break;
    default:

        nn_assert (0);
        break;
    }


    nn_fsm_start (&self->fsm);
}
