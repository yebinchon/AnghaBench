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
typedef  int /*<<< orphan*/  uint8_t ;
struct nn_sws {size_t inmsg_current_chunk_len; int utf8_code_pt_fragment_len; int /*<<< orphan*/  pipebase; int /*<<< orphan*/  instate; scalar_t__ is_final_frame; int /*<<< orphan*/ * utf8_code_pt_fragment; int /*<<< orphan*/ * inmsg_current_chunk_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SWS_CLOSE_ERR_INVALID_FRAME ; 
 int /*<<< orphan*/  NN_SWS_INSTATE_RECVD_CHUNKED ; 
 int NN_SWS_UTF8_FRAGMENT ; 
 int NN_SWS_UTF8_INVALID ; 
 size_t NN_SWS_UTF8_MAX_CODEPOINT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_sws*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_sws*) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC7 (struct nn_sws *self)
{
    uint8_t *pos;
    int code_point_len;
    size_t len;

    len = self->inmsg_current_chunk_len;
    pos = self->inmsg_current_chunk_buf;

    /*  For chunked transfers, it's possible that a previous chunk was cut
        intra-code point. That partially-validated code point is reassembled
        with the beginning of the current chunk and checked. */
    if (self->utf8_code_pt_fragment_len) {

        FUNC2 (self->utf8_code_pt_fragment_len <
            NN_SWS_UTF8_MAX_CODEPOINT_LEN);

        /*  Keep adding octets from fresh buffer to previous code point
            fragment to check for validity. */
        while (len > 0) {
            self->utf8_code_pt_fragment [self->utf8_code_pt_fragment_len] = *pos;
            self->utf8_code_pt_fragment_len++;
            pos++;
            len--;

            code_point_len = FUNC6 (self->utf8_code_pt_fragment,
                self->utf8_code_pt_fragment_len);

            if (code_point_len > 0) {
                /*  Valid code point found; continue validating. */
                break;
            }
            else if (code_point_len == NN_SWS_UTF8_INVALID) {
                FUNC4 (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                    "Invalid UTF-8 code point split on previous frame.");
                return;
            }
            else if (code_point_len == NN_SWS_UTF8_FRAGMENT) {
                if (self->is_final_frame) {
                    FUNC4 (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                        "Truncated UTF-8 payload with invalid code point.");
                    return;
                }
                else {
                    /*  This chunk is well-formed; now recv the next chunk. */
                    FUNC5 (self);
                    return;
                }
            }
        }
    }

    if (self->utf8_code_pt_fragment_len >= NN_SWS_UTF8_MAX_CODEPOINT_LEN)
        FUNC2 (0);

    while (len > 0) {
        code_point_len = FUNC6 (pos, len);

        if (code_point_len > 0) {
            /*  Valid code point found; continue validating. */
            FUNC2 (len >= (size_t) code_point_len);
            len -= code_point_len;
            pos += code_point_len;
            continue;
        }
        else if (code_point_len == NN_SWS_UTF8_INVALID) {
            self->utf8_code_pt_fragment_len = 0;
            FUNC1 (self->utf8_code_pt_fragment, 0,
                NN_SWS_UTF8_MAX_CODEPOINT_LEN);
            FUNC4 (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                "Invalid UTF-8 code point in payload.");
            return;
        }
        else if (code_point_len == NN_SWS_UTF8_FRAGMENT) {
            FUNC2 (len < NN_SWS_UTF8_MAX_CODEPOINT_LEN);
            self->utf8_code_pt_fragment_len = len;
            FUNC0 (self->utf8_code_pt_fragment, pos, len);
            if (self->is_final_frame) {
                FUNC4 (self, NN_SWS_CLOSE_ERR_INVALID_FRAME,
                    "Truncated UTF-8 payload with invalid code point.");
            }
            else {
                /*  Previous frame ended in the middle of a code point;
                    receive more. */
                FUNC5 (self);
            }
            return;
        }
    }

    /*  Entire buffer is well-formed. */
    FUNC2 (len == 0);

    self->utf8_code_pt_fragment_len = 0;
    FUNC1 (self->utf8_code_pt_fragment, 0, NN_SWS_UTF8_MAX_CODEPOINT_LEN);

    if (self->is_final_frame) {
        self->instate = NN_SWS_INSTATE_RECVD_CHUNKED;
        FUNC3 (&self->pipebase);
    }
    else {
        FUNC5 (self);
    }

    return;
}