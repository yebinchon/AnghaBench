
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct web_client {int server_host; void* auth_bearer_token; void* user_agent; int origin; } ;


 size_t NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE ;
 scalar_t__ respect_web_browser_do_not_track_policy ;
 scalar_t__ simple_uhash (char*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcasestr (char*,char*) ;
 void* strdupz (char*) ;
 int strncpyz (int ,char*,size_t) ;
 scalar_t__ unlikely (int) ;
 int web_client_disable_donottrack (struct web_client*) ;
 int web_client_enable_deflate (struct web_client*,int) ;
 int web_client_enable_donottrack (struct web_client*) ;
 int web_client_enable_keepalive (struct web_client*) ;
 scalar_t__ web_enable_gzip ;

__attribute__((used)) static inline char *http_header_parse(struct web_client *w, char *s, int parse_useragent) {
    static uint32_t hash_origin = 0, hash_connection = 0, hash_donottrack = 0, hash_useragent = 0, hash_authorization = 0, hash_host = 0;




    if(unlikely(!hash_origin)) {
        hash_origin = simple_uhash("Origin");
        hash_connection = simple_uhash("Connection");



        hash_donottrack = simple_uhash("DNT");
        hash_useragent = simple_uhash("User-Agent");
        hash_authorization = simple_uhash("X-Auth-Token");
        hash_host = simple_uhash("Host");
    }

    char *e = s;


    while(*e && *e != ':') e++;
    if(!*e) return e;


    *e = '\0';


    char *v = e + 1, *ve;


    while(*v == ' ') v++;
    ve = v;


    while(*ve && *ve != '\r') ve++;
    if(!*ve || ve[1] != '\n') {
        *e = ':';
        return ve;
    }


    *ve = '\0';

    uint32_t hash = simple_uhash(s);

    if(hash == hash_origin && !strcasecmp(s, "Origin"))
        strncpyz(w->origin, v, NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE);

    else if(hash == hash_connection && !strcasecmp(s, "Connection")) {
        if(strcasestr(v, "keep-alive"))
            web_client_enable_keepalive(w);
    }
    else if(respect_web_browser_do_not_track_policy && hash == hash_donottrack && !strcasecmp(s, "DNT")) {
        if(*v == '0') web_client_disable_donottrack(w);
        else if(*v == '1') web_client_enable_donottrack(w);
    }
    else if(parse_useragent && hash == hash_useragent && !strcasecmp(s, "User-Agent")) {
        w->user_agent = strdupz(v);
    } else if(hash == hash_authorization&& !strcasecmp(s, "X-Auth-Token")) {
        w->auth_bearer_token = strdupz(v);
    }
    else if(hash == hash_host && !strcasecmp(s, "Host")){
        strncpyz(w->server_host, v, ((size_t)(ve - v) < sizeof(w->server_host)-1 ? (size_t)(ve - v) : sizeof(w->server_host)-1));
    }
    *e = ':';
    *ve = '\r';
    return ve;
}
