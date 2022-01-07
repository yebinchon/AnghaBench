
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
typedef int coap_rw_buffer_t ;
struct TYPE_18__ {int len; int p; } ;
struct TYPE_19__ {int tok; TYPE_4__ payload; } ;
typedef TYPE_5__ coap_packet_t ;
struct TYPE_17__ {scalar_t__ len; int p; } ;
struct TYPE_20__ {TYPE_3__ buf; } ;
typedef TYPE_6__ coap_option_t ;
struct TYPE_21__ {struct TYPE_21__* next; scalar_t__ name; } ;
typedef TYPE_7__ coap_luser_entry ;
struct TYPE_22__ {TYPE_2__* user_entry; TYPE_1__* path; } ;
typedef TYPE_8__ coap_endpoint_t ;
struct TYPE_16__ {TYPE_7__* next; } ;
struct TYPE_15__ {scalar_t__ count; } ;


 int COAP_CONTENTTYPE_NONE ;
 int COAP_CONTENTTYPE_TEXT_PLAIN ;
 int COAP_OPTION_URI_PATH ;
 int COAP_RSPCODE_CONTENT ;
 int COAP_RSPCODE_NOT_FOUND ;
 scalar_t__ LUA_TFUNCTION ;
 size_t MAX_PAYLOAD_SIZE ;
 int NODE_DBG (char*) ;
 TYPE_6__* coap_findOptions (TYPE_5__ const*,int ,scalar_t__*) ;
 int coap_make_response (int *,TYPE_5__*,char const*,size_t,scalar_t__,scalar_t__,int *,int ,int ) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int) ;
 int lua_getglobal (int *,scalar_t__) ;
 int * lua_getstate () ;
 int lua_gettop (int *) ;
 int lua_isnil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 scalar_t__ memcmp (scalar_t__,int ,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int handle_post_function(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    const coap_option_t *opt;
    uint8_t count;
    int n;
    lua_State *L = lua_getstate();
    if (((void*)0) != (opt = coap_findOptions(inpkt, COAP_OPTION_URI_PATH, &count)))
    {
        if ((count != ep->path->count ) && (count != ep->path->count + 1))
        {
            NODE_DBG("should never happen.\n");
            goto end;
        }
        if (count == ep->path->count + 1)
        {
            coap_luser_entry *h = ep->user_entry->next;
            while(((void*)0) != h){
                if (opt[count-1].buf.len != strlen(h->name))
                {
                    h = h->next;
                    continue;
                }
                if (0 == memcmp(h->name, opt[count-1].buf.p, opt[count-1].buf.len))
                {
                    NODE_DBG("/v1/f/");
                    NODE_DBG((char *)h->name);
                    NODE_DBG(" match.\n");

                    if(strlen(h->name))
                    {
                        n = lua_gettop(L);
                        lua_getglobal(L, h->name);
                        if (lua_type(L, -1) != LUA_TFUNCTION) {
                            NODE_DBG ("should be a function\n");
                            lua_settop(L, n);
                            return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
                        } else {
                            lua_pushlstring(L, inpkt->payload.p, inpkt->payload.len);
                            lua_call(L, 1, 1);
                            if (!lua_isnil(L, -1)){
                                if( lua_isstring(L, -1) )
                                {
                                    size_t len = 0;
                                    const char *ret = luaL_checklstring( L, -1, &len );
                                    if(len > MAX_PAYLOAD_SIZE){
                                        lua_settop(L, n);
                                        luaL_error( L, "return string:<MAX_PAYLOAD_SIZE" );
                                        return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
                                    }
                                    NODE_DBG((char *)ret);
                                    NODE_DBG("\n");
                                    lua_settop(L, n);
                                    return coap_make_response(scratch, outpkt, ret, len, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
                                }
                            } else {
                                lua_settop(L, n);
                                return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
                            }
                        }
                    }
                } else {
                    h = h->next;
                }
            }
        }else{
            NODE_DBG("/v1/f match.\n");
            goto end;
        }
    }
    NODE_DBG("none match.\n");
end:
    return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
}
