#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  coap_rw_buffer_t ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_19__ {int /*<<< orphan*/  tok; TYPE_4__ payload; } ;
typedef  TYPE_5__ coap_packet_t ;
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_20__ {TYPE_3__ buf; } ;
typedef  TYPE_6__ coap_option_t ;
struct TYPE_21__ {struct TYPE_21__* next; scalar_t__ name; } ;
typedef  TYPE_7__ coap_luser_entry ;
struct TYPE_22__ {TYPE_2__* user_entry; TYPE_1__* path; } ;
typedef  TYPE_8__ coap_endpoint_t ;
struct TYPE_16__ {TYPE_7__* next; } ;
struct TYPE_15__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  COAP_CONTENTTYPE_NONE ; 
 int /*<<< orphan*/  COAP_CONTENTTYPE_TEXT_PLAIN ; 
 int /*<<< orphan*/  COAP_OPTION_URI_PATH ; 
 int /*<<< orphan*/  COAP_RSPCODE_CONTENT ; 
 int /*<<< orphan*/  COAP_RSPCODE_NOT_FOUND ; 
 scalar_t__ LUA_TFUNCTION ; 
 size_t MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_6__* FUNC1 (TYPE_5__ const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,char const*,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    const coap_option_t *opt;
    uint8_t count;
    int n;
    lua_State *L = FUNC7();
    if (NULL != (opt = FUNC1(inpkt, COAP_OPTION_URI_PATH, &count)))
    {
        if ((count != ep->path->count ) && (count != ep->path->count + 1)) // +1 for /f/[function], /v/[variable]
        {
            FUNC0("should never happen.\n");
            goto end;
        }
        if (count == ep->path->count + 1)
        {
            coap_luser_entry *h = ep->user_entry->next;     // ->next: skip the first entry(head)
            while(NULL != h){
                if (opt[count-1].buf.len != FUNC15(h->name))
                {
                    h = h->next;
                    continue;
                }
                if (0 == FUNC14(h->name, opt[count-1].buf.p, opt[count-1].buf.len))
                {
                    FUNC0("/v1/f/");
                    FUNC0((char *)h->name);
                    FUNC0(" match.\n");

                    if(FUNC15(h->name))
                    {
                        n = FUNC8(L);
                        FUNC6(L, h->name);
                        if (FUNC13(L, -1) != LUA_TFUNCTION) {
                            FUNC0 ("should be a function\n");
                            FUNC12(L, n);
                            return FUNC2(scratch, outpkt, NULL, 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
                        } else {
                            FUNC11(L, inpkt->payload.p, inpkt->payload.len);     // make sure payload.p is filled with '\0' after payload.len, or use lua_pushlstring
                            FUNC5(L, 1, 1);
                            if (!FUNC9(L, -1)){  /* get return? */
                                if( FUNC10(L, -1) )   // deal with the return string
                                {
                                    size_t len = 0;
                                    const char *ret = FUNC3( L, -1, &len );
                                    if(len > MAX_PAYLOAD_SIZE){
                                        FUNC12(L, n);
                                        FUNC4( L, "return string:<MAX_PAYLOAD_SIZE" );
                                        return FUNC2(scratch, outpkt, NULL, 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
                                    }
                                    FUNC0((char *)ret);
                                    FUNC0("\n");
                                    FUNC12(L, n);
                                    return FUNC2(scratch, outpkt, ret, len, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
                                }
                            } else {
                                FUNC12(L, n);
                                return FUNC2(scratch, outpkt, NULL, 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_TEXT_PLAIN);
                            }
                        }
                    }
                } else {
                    h = h->next;
                }
            }
        }else{
            FUNC0("/v1/f match.\n");
            goto end;
        }
    }
    FUNC0("none match.\n");
end:
    return FUNC2(scratch, outpkt, NULL, 0, id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_NOT_FOUND, COAP_CONTENTTYPE_NONE);
}