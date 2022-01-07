
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int coap_rw_buffer_t ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_6__ {int tok; TYPE_5__ payload; } ;
typedef TYPE_1__ coap_packet_t ;
typedef int coap_endpoint_t ;


 int COAP_CONTENTTYPE_TEXT_PLAIN ;
 int COAP_RSPCODE_BAD_REQUEST ;
 int COAP_RSPCODE_CONTENT ;
 int LUA_MAXINPUT ;
 int LUA_PROCESS_LINE_SIG ;
 int LUA_TASK_PRIO ;
 int NODE_DBG (char*) ;
 int coap_buffer_to_string (char*,int,TYPE_5__*) ;
 int coap_make_response (int *,TYPE_1__*,int *,int ,int ,int ,int *,int ,int ) ;
 scalar_t__ lua_put_line (char*,int ) ;
 int strlen (char*) ;
 int system_os_post (int ,int ,int ) ;

__attribute__((used)) static int handle_post_command(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    if (inpkt->payload.len == 0)
        return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_BAD_REQUEST, COAP_CONTENTTYPE_TEXT_PLAIN);
    if (inpkt->payload.len > 0)
    {
        char line[LUA_MAXINPUT];
        if (!coap_buffer_to_string(line, LUA_MAXINPUT, &inpkt->payload) &&
            lua_put_line(line, strlen(line))) {
            NODE_DBG("\nResult(if any):\n");
            system_os_post (LUA_TASK_PRIO, LUA_PROCESS_LINE_SIG, 0);
        }
        return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
    }
}
