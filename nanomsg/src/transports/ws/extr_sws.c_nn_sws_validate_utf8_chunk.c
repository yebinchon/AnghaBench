
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_sws {size_t inmsg_current_chunk_len; int utf8_code_pt_fragment_len; int pipebase; int instate; scalar_t__ is_final_frame; int * utf8_code_pt_fragment; int * inmsg_current_chunk_buf; } ;


 int NN_SWS_CLOSE_ERR_INVALID_FRAME ;
 int NN_SWS_INSTATE_RECVD_CHUNKED ;
 int NN_SWS_UTF8_FRAGMENT ;
 int NN_SWS_UTF8_INVALID ;
 size_t NN_SWS_UTF8_MAX_CODEPOINT_LEN ;
 int memcpy (int *,int *,size_t) ;
 int memset (int *,int ,size_t) ;
 int nn_assert (int) ;
 int nn_pipebase_received (int *) ;
 int nn_sws_fail_conn (struct nn_sws*,int ,char*) ;
 int nn_sws_recv_hdr (struct nn_sws*) ;
 int nn_utf8_code_point (int *,size_t) ;

__attribute__((used)) static void nn_sws_validate_utf8_chunk (struct nn_sws *self)
{
    uint8_t *pos;
    int code_point_len;
    size_t len;

    len = self->inmsg_current_chunk_len;
    pos = self->inmsg_current_chunk_buf;




    if (self->utf8_code_pt_fragment_len) {

        nn_assert (self->utf8_code_pt_fragment_len <
            NN_SWS_UTF8_MAX_CODEPOINT_LEN);



        while (len > 0) {
            self->utf8_code_pt_fragment [self->utf8_code_pt_fragment_len] = *pos;
            self->utf8_code_pt_fragment_len++;
            pos++;
            len--;

            code_point_len = nn_utf8_code_point (self->utf8_code_pt_fragment,
                self->utf8_code_pt_fragment_len);

            if (code_point_len > 0) {

                break;
            }
            else if (code_point_len == NN_SWS_UTF8_INVALID) {
                nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                    "Invalid UTF-8 code point split on previous frame.");
                return;
            }
            else if (code_point_len == NN_SWS_UTF8_FRAGMENT) {
                if (self->is_final_frame) {
                    nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                        "Truncated UTF-8 payload with invalid code point.");
                    return;
                }
                else {

                    nn_sws_recv_hdr (self);
                    return;
                }
            }
        }
    }

    if (self->utf8_code_pt_fragment_len >= NN_SWS_UTF8_MAX_CODEPOINT_LEN)
        nn_assert (0);

    while (len > 0) {
        code_point_len = nn_utf8_code_point (pos, len);

        if (code_point_len > 0) {

            nn_assert (len >= (size_t) code_point_len);
            len -= code_point_len;
            pos += code_point_len;
            continue;
        }
        else if (code_point_len == NN_SWS_UTF8_INVALID) {
            self->utf8_code_pt_fragment_len = 0;
            memset (self->utf8_code_pt_fragment, 0,
                NN_SWS_UTF8_MAX_CODEPOINT_LEN);
            nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                "Invalid UTF-8 code point in payload.");
            return;
        }
        else if (code_point_len == NN_SWS_UTF8_FRAGMENT) {
            nn_assert (len < NN_SWS_UTF8_MAX_CODEPOINT_LEN);
            self->utf8_code_pt_fragment_len = len;
            memcpy (self->utf8_code_pt_fragment, pos, len);
            if (self->is_final_frame) {
                nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                    "Truncated UTF-8 payload with invalid code point.");
            }
            else {


                nn_sws_recv_hdr (self);
            }
            return;
        }
    }


    nn_assert (len == 0);

    self->utf8_code_pt_fragment_len = 0;
    memset (self->utf8_code_pt_fragment, 0, NN_SWS_UTF8_MAX_CODEPOINT_LEN);

    if (self->is_final_frame) {
        self->instate = NN_SWS_INSTATE_RECVD_CHUNKED;
        nn_pipebase_received (&self->pipebase);
    }
    else {
        nn_sws_recv_hdr (self);
    }

    return;
}
