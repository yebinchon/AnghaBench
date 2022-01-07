
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct nn_sws {size_t inmsg_current_chunk_len; int * inmsg_current_chunk_buf; } ;


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
 int nn_assert (int) ;
 int nn_gets (int *) ;
 int nn_sws_fail_conn (struct nn_sws*,int,char*) ;
 int nn_utf8_code_point (int *,size_t) ;

__attribute__((used)) static void nn_sws_acknowledge_close_handshake (struct nn_sws *self)
{
    uint8_t *pos;
    uint16_t close_code;
    int code_point_len;
    size_t len;

    len = self->inmsg_current_chunk_len;
    pos = self->inmsg_current_chunk_buf;


    if (len == 0) {
        nn_sws_fail_conn (self, NN_SWS_CLOSE_NORMAL, "");
        return;
    }



    nn_assert (len >= NN_SWS_CLOSE_CODE_LEN);
    len -= NN_SWS_CLOSE_CODE_LEN;
    pos += NN_SWS_CLOSE_CODE_LEN;



    while (len > 0) {
        code_point_len = nn_utf8_code_point (pos, len);

        if (code_point_len > 0) {

            nn_assert (len >= (size_t) code_point_len);
            len -= code_point_len;
            pos += code_point_len;
            continue;
        }
        else {

            nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_PROTO,
                "Invalid UTF-8 sent as Close Reason.");
            return;
        }
    }


    nn_assert (len == 0);

    close_code = nn_gets (self->inmsg_current_chunk_buf);

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

        nn_sws_fail_conn (self, (int) close_code, "");
    }
    else {
        nn_sws_fail_conn (self, NN_SWS_CLOSE_ERR_PROTO,
            "Unrecognized close code.");
    }

    return;
}
