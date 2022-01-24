#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct nn_sws {char* fail_msg; size_t fail_msg_len; int mode; scalar_t__ outstate; int /*<<< orphan*/  done; int /*<<< orphan*/  fsm; int /*<<< orphan*/  state; int /*<<< orphan*/  usock; int /*<<< orphan*/  inmsg_array; int /*<<< orphan*/  pipebase; int /*<<< orphan*/  instate; } ;
struct nn_iovec {char* iov_base; size_t iov_len; } ;

/* Variables and functions */
 size_t NN_SWS_CLOSE_CODE_LEN ; 
 int NN_SWS_FRAME_BITMASK_FIN ; 
 char NN_SWS_FRAME_BITMASK_MASKED ; 
 char NN_SWS_FRAME_BITMASK_NOT_MASKED ; 
 size_t NN_SWS_FRAME_SIZE_INITIAL ; 
 int NN_SWS_FRAME_SIZE_MASK ; 
 int /*<<< orphan*/  NN_SWS_INSTATE_CLOSED ; 
 scalar_t__ NN_SWS_OUTSTATE_IDLE ; 
 scalar_t__ NN_SWS_OUTSTATE_SENDING ; 
 size_t NN_SWS_PAYLOAD_MAX_LENGTH ; 
 int /*<<< orphan*/  NN_SWS_RETURN_CLOSE_HANDSHAKE ; 
 int /*<<< orphan*/  NN_SWS_STATE_ACTIVE ; 
 int /*<<< orphan*/  NN_SWS_STATE_CLOSING_CONNECTION ; 
 int /*<<< orphan*/  NN_SWS_STATE_DONE ; 
#define  NN_WS_CLIENT 129 
 int NN_WS_OPCODE_CLOSE ; 
#define  NN_WS_SERVER 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_sws*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct nn_iovec*,int) ; 
 size_t FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11 (struct nn_sws *self, int code, char *reason)
{
    size_t reason_len;
    size_t payload_len;
    uint8_t rand_mask [NN_SWS_FRAME_SIZE_MASK];
    uint8_t *payload_pos;
    struct nn_iovec iov;

    FUNC2 (self, NN_SWS_STATE_ACTIVE);

    /*  Stop user send/recv actions. */
    self->instate = NN_SWS_INSTATE_CLOSED;
    FUNC5 (&self->pipebase);

    /*  Destroy any remnant incoming message fragments. */
    FUNC4 (&self->inmsg_array);

    reason_len = FUNC10 (reason);

    payload_len = reason_len + NN_SWS_CLOSE_CODE_LEN;

    /*  Ensure text is short enough to also include code and framing. */
    FUNC1 (payload_len <= NN_SWS_PAYLOAD_MAX_LENGTH);

    /*  RFC 6455 section 5.5.1. */
    self->fail_msg [0] = (char)(NN_SWS_FRAME_BITMASK_FIN | NN_WS_OPCODE_CLOSE);

    /*  Size of the payload, which is the status code plus the reason. */
    self->fail_msg [1] = (char)payload_len;

    self->fail_msg_len = NN_SWS_FRAME_SIZE_INITIAL;

    switch (self->mode) {
    case NN_WS_SERVER:
        self->fail_msg [1] |= NN_SWS_FRAME_BITMASK_NOT_MASKED;
        break;
    case NN_WS_CLIENT:
        self->fail_msg [1] |= NN_SWS_FRAME_BITMASK_MASKED;

        /*  Generate 32-bit mask as per RFC 6455 5.3. */
        FUNC7 (rand_mask, NN_SWS_FRAME_SIZE_MASK);

        FUNC0 (&self->fail_msg [NN_SWS_FRAME_SIZE_INITIAL],
            rand_mask, NN_SWS_FRAME_SIZE_MASK);

        self->fail_msg_len += NN_SWS_FRAME_SIZE_MASK;
        break;
    default:
        /*  Developer error. */
        FUNC1 (0);
    }

    payload_pos = (uint8_t*) (&self->fail_msg [self->fail_msg_len]);

    /*  Copy Status Code in network order (big-endian). */
    FUNC6 (payload_pos, (uint16_t) code);
    self->fail_msg_len += NN_SWS_CLOSE_CODE_LEN;

    /*  Copy Close Reason immediately following the code. */
    FUNC0 (payload_pos + NN_SWS_CLOSE_CODE_LEN, reason, reason_len);
    self->fail_msg_len += reason_len;

    /*  If this is a client, apply mask. */
    if (self->mode == NN_WS_CLIENT) {
        FUNC8 (payload_pos, payload_len,
            rand_mask, NN_SWS_FRAME_SIZE_MASK, NULL);
    }


    if (self->outstate == NN_SWS_OUTSTATE_IDLE) {
        iov.iov_base = self->fail_msg;
        iov.iov_len = self->fail_msg_len;
        FUNC9 (self->usock, &iov, 1);
        self->outstate = NN_SWS_OUTSTATE_SENDING;
        self->state = NN_SWS_STATE_CLOSING_CONNECTION;
    } else {
        self->state = NN_SWS_STATE_DONE;
        FUNC3 (&self->fsm, &self->done, NN_SWS_RETURN_CLOSE_HANDSHAKE);
    }

    return;
}