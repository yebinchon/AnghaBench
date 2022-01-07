
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sws {int inhdr; int usock; int instate; int inmsg_control; scalar_t__ inmsg_total_size; scalar_t__ inmsg_current_chunk_len; scalar_t__ inmsg_chunks; int * inmsg_current_chunk_buf; int inmsg_array; int continuing; } ;


 int NN_SWS_FRAME_MAX_HDR_LEN ;
 int NN_SWS_FRAME_SIZE_INITIAL ;
 int NN_SWS_INSTATE_RECV_HDR ;
 int NN_SWS_PAYLOAD_MAX_LENGTH ;
 int memset (int ,int ,int ) ;
 int nn_assert (int ) ;
 int nn_list_empty (int *) ;
 int nn_usock_recv (int ,int ,int ,int *) ;

__attribute__((used)) static int nn_sws_recv_hdr (struct nn_sws *self)
{
    if (!self->continuing) {
        nn_assert (nn_list_empty (&self->inmsg_array));

        self->inmsg_current_chunk_buf = ((void*)0);
        self->inmsg_chunks = 0;
        self->inmsg_current_chunk_len = 0;
        self->inmsg_total_size = 0;
    }

    memset (self->inmsg_control, 0, NN_SWS_PAYLOAD_MAX_LENGTH);
    memset (self->inhdr, 0, NN_SWS_FRAME_MAX_HDR_LEN);
    self->instate = NN_SWS_INSTATE_RECV_HDR;
    nn_usock_recv (self->usock, self->inhdr, NN_SWS_FRAME_SIZE_INITIAL, ((void*)0));

    return 0;
}
