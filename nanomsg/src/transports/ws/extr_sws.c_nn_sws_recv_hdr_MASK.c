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
struct nn_sws {int /*<<< orphan*/  inhdr; int /*<<< orphan*/  usock; int /*<<< orphan*/  instate; int /*<<< orphan*/  inmsg_control; scalar_t__ inmsg_total_size; scalar_t__ inmsg_current_chunk_len; scalar_t__ inmsg_chunks; int /*<<< orphan*/ * inmsg_current_chunk_buf; int /*<<< orphan*/  inmsg_array; int /*<<< orphan*/  continuing; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SWS_FRAME_MAX_HDR_LEN ; 
 int /*<<< orphan*/  NN_SWS_FRAME_SIZE_INITIAL ; 
 int /*<<< orphan*/  NN_SWS_INSTATE_RECV_HDR ; 
 int /*<<< orphan*/  NN_SWS_PAYLOAD_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (struct nn_sws *self)
{
    if (!self->continuing) {
        FUNC1 (FUNC2 (&self->inmsg_array));

        self->inmsg_current_chunk_buf = NULL;
        self->inmsg_chunks = 0;
        self->inmsg_current_chunk_len = 0;
        self->inmsg_total_size = 0;
    }

    FUNC0 (self->inmsg_control, 0, NN_SWS_PAYLOAD_MAX_LENGTH);
    FUNC0 (self->inhdr, 0, NN_SWS_FRAME_MAX_HDR_LEN);
    self->instate = NN_SWS_INSTATE_RECV_HDR;
    FUNC3 (self->usock, self->inhdr, NN_SWS_FRAME_SIZE_INITIAL, NULL);

    return 0;
}