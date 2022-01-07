
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
typedef int coap_rw_buffer_t ;
struct TYPE_17__ {int tok; } ;
typedef TYPE_4__ coap_packet_t ;
struct TYPE_16__ {scalar_t__ len; int p; } ;
struct TYPE_18__ {TYPE_3__ buf; } ;
typedef TYPE_5__ coap_option_t ;
struct TYPE_19__ {char const* name; struct TYPE_19__* next; int content_type; } ;
typedef TYPE_6__ coap_luser_entry ;
struct TYPE_20__ {TYPE_2__* user_entry; TYPE_1__* path; } ;
typedef TYPE_7__ coap_endpoint_t ;
struct TYPE_15__ {TYPE_6__* next; } ;
struct TYPE_14__ {scalar_t__ count; } ;


 int COAP_CONTENTTYPE_NONE ;
 int COAP_CONTENTTYPE_TEXT_PLAIN ;
 int COAP_OPTION_URI_PATH ;
 int COAP_RSPCODE_CONTENT ;
 int COAP_RSPCODE_NOT_FOUND ;
 int NODE_DBG (char*) ;
 TYPE_5__* coap_findOptions (TYPE_4__ const*,int ,scalar_t__*) ;
 int coap_make_response (int *,TYPE_4__*,scalar_t__ const*,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ) ;
 int lua_getglobal (int *,char const*) ;
 int * lua_getstate () ;
 int lua_gettop (int *) ;
 int lua_isnumber (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ memcmp (char const*,int ,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int handle_get_variable(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
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
                    NODE_DBG("/v1/v/");
                    NODE_DBG((char *)h->name);
                    NODE_DBG(" match.\n");
                    if(strlen(h->name))
                    {
                        n = lua_gettop(L);
                        lua_getglobal(L, h->name);
                        if (!lua_isnumber(L, -1) && !lua_isstring(L, -1)) {
                            NODE_DBG ("should be a number or string.\n");
                            lua_settop(L, n);
                            return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
                        } else {
                            const char *res = lua_tostring(L,-1);
                            lua_settop(L, n);
                            return coap_make_response(scratch, outpkt, (const uint8_t *)res, strlen(res), id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, h->content_type);
                        }
                    }
                } else {
                    h = h->next;
                }
            }
        }else{
            NODE_DBG("/v1/v match.\n");
            goto end;
        }
    }
    NODE_DBG("none match.\n");
end:
    return coap_make_response(scratch, outpkt, ((void*)0), 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
}
