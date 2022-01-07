
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
struct lwan_request {TYPE_2__ response; TYPE_1__* conn; } ;
struct TYPE_3__ {int flags; } ;


 int CONN_IS_WEBSOCKET ;
 int WS_OPCODE_TEXT ;
 char* lwan_strbuf_get_buffer (int ) ;
 size_t lwan_strbuf_get_length (int ) ;
 int lwan_strbuf_reset (int ) ;
 int write_websocket_frame (struct lwan_request*,unsigned char,char*,size_t) ;

void lwan_response_websocket_write(struct lwan_request *request)
{
    size_t len = lwan_strbuf_get_length(request->response.buffer);
    char *msg = lwan_strbuf_get_buffer(request->response.buffer);


    unsigned char header = 0x80 | WS_OPCODE_TEXT;

    if (!(request->conn->flags & CONN_IS_WEBSOCKET))
        return;

    write_websocket_frame(request, header, msg, len);
    lwan_strbuf_reset(request->response.buffer);
}
