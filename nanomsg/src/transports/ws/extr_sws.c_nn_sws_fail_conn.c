
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint16_t ;
struct nn_sws {char* fail_msg; size_t fail_msg_len; int mode; scalar_t__ outstate; int done; int fsm; int state; int usock; int inmsg_array; int pipebase; int instate; } ;
struct nn_iovec {char* iov_base; size_t iov_len; } ;


 size_t NN_SWS_CLOSE_CODE_LEN ;
 int NN_SWS_FRAME_BITMASK_FIN ;
 char NN_SWS_FRAME_BITMASK_MASKED ;
 char NN_SWS_FRAME_BITMASK_NOT_MASKED ;
 size_t NN_SWS_FRAME_SIZE_INITIAL ;
 int NN_SWS_FRAME_SIZE_MASK ;
 int NN_SWS_INSTATE_CLOSED ;
 scalar_t__ NN_SWS_OUTSTATE_IDLE ;
 scalar_t__ NN_SWS_OUTSTATE_SENDING ;
 size_t NN_SWS_PAYLOAD_MAX_LENGTH ;
 int NN_SWS_RETURN_CLOSE_HANDSHAKE ;
 int NN_SWS_STATE_ACTIVE ;
 int NN_SWS_STATE_CLOSING_CONNECTION ;
 int NN_SWS_STATE_DONE ;

 int NN_WS_OPCODE_CLOSE ;

 int memcpy (char*,char*,size_t) ;
 int nn_assert (int) ;
 int nn_assert_state (struct nn_sws*,int ) ;
 int nn_fsm_raise (int *,int *,int ) ;
 int nn_msg_array_term (int *) ;
 int nn_pipebase_stop (int *) ;
 int nn_puts (char*,int ) ;
 int nn_random_generate (char*,int) ;
 int nn_sws_mask_payload (char*,size_t,char*,int,int *) ;
 int nn_usock_send (int ,struct nn_iovec*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static void nn_sws_fail_conn (struct nn_sws *self, int code, char *reason)
{
    size_t reason_len;
    size_t payload_len;
    uint8_t rand_mask [NN_SWS_FRAME_SIZE_MASK];
    uint8_t *payload_pos;
    struct nn_iovec iov;

    nn_assert_state (self, NN_SWS_STATE_ACTIVE);


    self->instate = NN_SWS_INSTATE_CLOSED;
    nn_pipebase_stop (&self->pipebase);


    nn_msg_array_term (&self->inmsg_array);

    reason_len = strlen (reason);

    payload_len = reason_len + NN_SWS_CLOSE_CODE_LEN;


    nn_assert (payload_len <= NN_SWS_PAYLOAD_MAX_LENGTH);


    self->fail_msg [0] = (char)(NN_SWS_FRAME_BITMASK_FIN | NN_WS_OPCODE_CLOSE);


    self->fail_msg [1] = (char)payload_len;

    self->fail_msg_len = NN_SWS_FRAME_SIZE_INITIAL;

    switch (self->mode) {
    case 128:
        self->fail_msg [1] |= NN_SWS_FRAME_BITMASK_NOT_MASKED;
        break;
    case 129:
        self->fail_msg [1] |= NN_SWS_FRAME_BITMASK_MASKED;


        nn_random_generate (rand_mask, NN_SWS_FRAME_SIZE_MASK);

        memcpy (&self->fail_msg [NN_SWS_FRAME_SIZE_INITIAL],
            rand_mask, NN_SWS_FRAME_SIZE_MASK);

        self->fail_msg_len += NN_SWS_FRAME_SIZE_MASK;
        break;
    default:

        nn_assert (0);
    }

    payload_pos = (uint8_t*) (&self->fail_msg [self->fail_msg_len]);


    nn_puts (payload_pos, (uint16_t) code);
    self->fail_msg_len += NN_SWS_CLOSE_CODE_LEN;


    memcpy (payload_pos + NN_SWS_CLOSE_CODE_LEN, reason, reason_len);
    self->fail_msg_len += reason_len;


    if (self->mode == 129) {
        nn_sws_mask_payload (payload_pos, payload_len,
            rand_mask, NN_SWS_FRAME_SIZE_MASK, ((void*)0));
    }


    if (self->outstate == NN_SWS_OUTSTATE_IDLE) {
        iov.iov_base = self->fail_msg;
        iov.iov_len = self->fail_msg_len;
        nn_usock_send (self->usock, &iov, 1);
        self->outstate = NN_SWS_OUTSTATE_SENDING;
        self->state = NN_SWS_STATE_CLOSING_CONNECTION;
    } else {
        self->state = NN_SWS_STATE_DONE;
        nn_fsm_raise (&self->fsm, &self->done, NN_SWS_RETURN_CLOSE_HANDSHAKE);
    }

    return;
}
