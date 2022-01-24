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
typedef  scalar_t__ uint32_t ;
struct web_client {int /*<<< orphan*/  server_host; void* auth_bearer_token; void* user_agent; int /*<<< orphan*/  origin; } ;

/* Variables and functions */
 size_t NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE ; 
 scalar_t__ respect_web_browser_do_not_track_policy ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct web_client*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct web_client*) ; 
 scalar_t__ web_enable_gzip ; 

__attribute__((used)) static inline char *FUNC10(struct web_client *w, char *s, int parse_useragent) {
    static uint32_t hash_origin = 0, hash_connection = 0, hash_donottrack = 0, hash_useragent = 0, hash_authorization = 0, hash_host = 0;
#ifdef NETDATA_WITH_ZLIB
    static uint32_t hash_accept_encoding = 0;
#endif

    if(FUNC5(!hash_origin)) {
        hash_origin = FUNC0("Origin");
        hash_connection = FUNC0("Connection");
#ifdef NETDATA_WITH_ZLIB
        hash_accept_encoding = simple_uhash("Accept-Encoding");
#endif
        hash_donottrack = FUNC0("DNT");
        hash_useragent = FUNC0("User-Agent");
        hash_authorization = FUNC0("X-Auth-Token");
        hash_host = FUNC0("Host");
    }

    char *e = s;

    // find the :
    while(*e && *e != ':') e++;
    if(!*e) return e;

    // get the name
    *e = '\0';

    // find the value
    char *v = e + 1, *ve;

    // skip leading spaces from value
    while(*v == ' ') v++;
    ve = v;

    // find the \r
    while(*ve && *ve != '\r') ve++;
    if(!*ve || ve[1] != '\n') {
        *e = ':';
        return ve;
    }

    // terminate the value
    *ve = '\0';

    uint32_t hash = FUNC0(s);

    if(hash == hash_origin && !FUNC1(s, "Origin"))
        FUNC4(w->origin, v, NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE);

    else if(hash == hash_connection && !FUNC1(s, "Connection")) {
        if(FUNC2(v, "keep-alive"))
            FUNC9(w);
    }
    else if(respect_web_browser_do_not_track_policy && hash == hash_donottrack && !FUNC1(s, "DNT")) {
        if(*v == '0') FUNC6(w);
        else if(*v == '1') FUNC8(w);
    }
    else if(parse_useragent && hash == hash_useragent && !FUNC1(s, "User-Agent")) {
        w->user_agent = FUNC3(v);
    } else if(hash == hash_authorization&& !FUNC1(s, "X-Auth-Token")) {
        w->auth_bearer_token = FUNC3(v);
    }
    else if(hash == hash_host && !FUNC1(s, "Host")){
        FUNC4(w->server_host, v, ((size_t)(ve - v) < sizeof(w->server_host)-1 ? (size_t)(ve - v) : sizeof(w->server_host)-1));
    }
#ifdef NETDATA_WITH_ZLIB
    else if(hash == hash_accept_encoding && !strcasecmp(s, "Accept-Encoding")) {
        if(web_enable_gzip) {
            if(strcasestr(v, "gzip"))
                web_client_enable_deflate(w, 1);
            //
            // does not seem to work
            // else if(strcasestr(v, "deflate"))
            //  web_client_enable_deflate(w, 0);
        }
    }
#endif /* NETDATA_WITH_ZLIB */

    *e = ':';
    *ve = '\r';
    return ve;
}