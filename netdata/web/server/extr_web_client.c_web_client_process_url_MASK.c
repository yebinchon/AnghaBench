#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; int /*<<< orphan*/  last_url; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {void* contenttype; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 void* CT_TEXT_HTML ; 
 void* CT_TEXT_PLAIN ; 
 int /*<<< orphan*/  D_RRD_STATS ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  D_WEB_CLIENT_ACCESS ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_NOT_FOUND ; 
 int HTTP_RESP_OK ; 
 int /*<<< orphan*/  RRDSET_FLAG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct web_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  debug_flags ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct web_client*,char*) ; 
 char* FUNC11 (char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdata_exit ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  web_client_api_request ; 
 int /*<<< orphan*/  FUNC22 (struct web_client*) ; 
 int FUNC23 (struct web_client*) ; 
 int FUNC24 (int /*<<< orphan*/ *,struct web_client*,char*) ; 

__attribute__((used)) static inline int FUNC25(RRDHOST *host, struct web_client *w, char *url) {
    static uint32_t
            hash_api = 0,
            hash_netdata_conf = 0,
            hash_host = 0;

#ifdef NETDATA_INTERNAL_CHECKS
    static uint32_t hash_exit = 0, hash_debug = 0, hash_mirror = 0;
#endif

    if(FUNC21(!hash_api)) {
        hash_api = FUNC18("api");
        hash_netdata_conf = FUNC18("netdata.conf");
        hash_host = FUNC18("host");
#ifdef NETDATA_INTERNAL_CHECKS
        hash_exit = simple_hash("exit");
        hash_debug = simple_hash("debug");
        hash_mirror = simple_hash("mirror");
#endif
    }

    char *tok = FUNC11(&url, "/?");
    if(FUNC9(tok && *tok)) {
        uint32_t hash = FUNC18(tok);
        FUNC7(D_WEB_CLIENT, "%llu: Processing command '%s'.", w->id, tok);

        if(FUNC21(hash == hash_api && FUNC19(tok, "api") == 0)) {                           // current API
            FUNC7(D_WEB_CLIENT_ACCESS, "%llu: API request ...", w->id);
            return FUNC5(host, w, url, web_client_api_request);
        }
        else if(FUNC21(hash == hash_host && FUNC19(tok, "host") == 0)) {                    // host switching
            FUNC7(D_WEB_CLIENT_ACCESS, "%llu: host switch request ...", w->id);
            return FUNC24(host, w, url);
        }
        else if(FUNC21(hash == hash_netdata_conf && FUNC19(tok, "netdata.conf") == 0)) {    // netdata.conf
            if(FUNC21(!FUNC22(w)))
                return FUNC23(w);

            FUNC7(D_WEB_CLIENT_ACCESS, "%llu: generating netdata.conf ...", w->id);
            w->response.data->contenttype = CT_TEXT_PLAIN;
            FUNC1(w->response.data);
            FUNC6(w->response.data, 0);
            return HTTP_RESP_OK;
        }
#ifdef NETDATA_INTERNAL_CHECKS
        else if(unlikely(hash == hash_exit && strcmp(tok, "exit") == 0)) {
            if(unlikely(!web_client_can_access_netdataconf(w)))
                return web_client_permission_denied(w);

            w->response.data->contenttype = CT_TEXT_PLAIN;
            buffer_flush(w->response.data);

            if(!netdata_exit)
                buffer_strcat(w->response.data, "ok, will do...");
            else
                buffer_strcat(w->response.data, "I am doing it already");

            error("web request to exit received.");
            netdata_cleanup_and_exit(0);
            return HTTP_RESP_OK;
        }
        else if(unlikely(hash == hash_debug && strcmp(tok, "debug") == 0)) {
            if(unlikely(!web_client_can_access_netdataconf(w)))
                return web_client_permission_denied(w);

            buffer_flush(w->response.data);

            // get the name of the data to show
            tok = mystrsep(&url, "&");
            if(tok && *tok) {
                debug(D_WEB_CLIENT, "%llu: Searching for RRD data with name '%s'.", w->id, tok);

                // do we have such a data set?
                RRDSET *st = rrdset_find_byname(host, tok);
                if(!st) st = rrdset_find(host, tok);
                if(!st) {
                    w->response.data->contenttype = CT_TEXT_HTML;
                    buffer_strcat(w->response.data, "Chart is not found: ");
                    buffer_strcat_htmlescape(w->response.data, tok);
                    debug(D_WEB_CLIENT_ACCESS, "%llu: %s is not found.", w->id, tok);
                    return HTTP_RESP_NOT_FOUND;
                }

                debug_flags |= D_RRD_STATS;

                if(rrdset_flag_check(st, RRDSET_FLAG_DEBUG))
                    rrdset_flag_clear(st, RRDSET_FLAG_DEBUG);
                else
                    rrdset_flag_set(st, RRDSET_FLAG_DEBUG);

                w->response.data->contenttype = CT_TEXT_HTML;
                buffer_sprintf(w->response.data, "Chart has now debug %s: ", rrdset_flag_check(st, RRDSET_FLAG_DEBUG)?"enabled":"disabled");
                buffer_strcat_htmlescape(w->response.data, tok);
                debug(D_WEB_CLIENT_ACCESS, "%llu: debug for %s is %s.", w->id, tok, rrdset_flag_check(st, RRDSET_FLAG_DEBUG)?"enabled":"disabled");
                return HTTP_RESP_OK;
            }

            buffer_flush(w->response.data);
            buffer_strcat(w->response.data, "debug which chart?\r\n");
            return HTTP_RESP_BAD_REQUEST;
        }
        else if(unlikely(hash == hash_mirror && strcmp(tok, "mirror") == 0)) {
            if(unlikely(!web_client_can_access_netdataconf(w)))
                return web_client_permission_denied(w);

            debug(D_WEB_CLIENT_ACCESS, "%llu: Mirroring...", w->id);

            // replace the zero bytes with spaces
            buffer_char_replace(w->response.data, '\0', ' ');

            // just leave the buffer as is
            // it will be copied back to the client

            return HTTP_RESP_OK;
        }
#endif  /* NETDATA_INTERNAL_CHECKS */
    }

    char filename[FILENAME_MAX+1];
    url = filename;
    FUNC20(filename, w->last_url, FILENAME_MAX);
    tok = FUNC11(&url, "?");
    FUNC1(w->response.data);
    return FUNC10(w, (tok && *tok)?tok:"/");
}