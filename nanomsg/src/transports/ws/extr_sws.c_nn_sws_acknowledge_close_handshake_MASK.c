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
typedef  int uint16_t ;
struct nn_sws {size_t inmsg_current_chunk_len; int /*<<< orphan*/ * inmsg_current_chunk_buf; } ;

/* Variables and functions */
 size_t NN_SWS_CLOSE_CODE_LEN ; 
 int NN_SWS_CLOSE_ERR_EXTENSION ; 
 int NN_SWS_CLOSE_ERR_INVALID_FRAME ; 
 int NN_SWS_CLOSE_ERR_POLICY ; 
 int NN_SWS_CLOSE_ERR_PROTO ; 
 int NN_SWS_CLOSE_ERR_SERVER ; 
 int NN_SWS_CLOSE_ERR_TOOBIG ; 
 int NN_SWS_CLOSE_ERR_WUT ; 
 int NN_SWS_CLOSE_GOING_AWAY ; 
 int NN_SWS_CLOSE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_sws*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4 (struct nn_sws *self)
{
    uint8_t *pos;
    uint16_t close_code;
    int code_point_len;
    size_t len;

    len = self->inmsg_current_chunk_len;
    pos = self->inmsg_current_chunk_buf;

    /*  Peer did not provide a Close Code, so choose our own here. */
    if (len == 0) {
        FUNC2 (self, NN_SWS_CLOSE_NORMAL, "");
        return;
    }

    /*  If the payload is not even long enough for the required 2-octet
        Close Code, the connection should have already been failed. */
    FUNC0 (len >= NN_SWS_CLOSE_CODE_LEN);
    len -= NN_SWS_CLOSE_CODE_LEN;
    pos += NN_SWS_CLOSE_CODE_LEN;

    /*  As per RFC 6455 7.1.6, the Close Reason following the Close Code
        must be well-formed UTF-8. */
    while (len > 0) {
        code_point_len = FUNC3 (pos, len);

        if (code_point_len > 0) {
            /*  Valid code point found; continue validating. */
            FUNC0 (len >= (size_t) code_point_len);
            len -= code_point_len;
            pos += code_point_len;
            continue;
        }
        else {
            /*  RFC 6455 7.1.6 */
            FUNC2 (self, NN_SWS_CLOSE_ERR_PROTO,
                "Invalid UTF-8 sent as Close Reason.");
            return;
        }
    }

    /*  Entire Close Reason is well-formed UTF-8 (or empty) */
    FUNC0 (len == 0);

    close_code = FUNC1 (self->inmsg_current_chunk_buf);

    if (close_code == NN_SWS_CLOSE_NORMAL ||
        close_code == NN_SWS_CLOSE_GOING_AWAY ||
        close_code == NN_SWS_CLOSE_ERR_PROTO ||
        close_code == NN_SWS_CLOSE_ERR_WUT ||
        close_code == NN_SWS_CLOSE_ERR_INVALID_FRAME ||
        close_code == NN_SWS_CLOSE_ERR_POLICY ||
        close_code == NN_SWS_CLOSE_ERR_TOOBIG ||
        close_code == NN_SWS_CLOSE_ERR_EXTENSION ||
        close_code == NN_SWS_CLOSE_ERR_SERVER ||
        (close_code >= 3000 && close_code <= 3999) ||
        (close_code >= 4000 && close_code <= 4999)) {
        /*  Repeat close code, per RFC 6455 7.4.1 and 7.4.2 */
        FUNC2 (self, (int) close_code, "");
    }
    else {
        FUNC2 (self, NN_SWS_CLOSE_ERR_PROTO,
            "Unrecognized close code.");
    }

    return;
}