
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; } ;
struct web_client {int mode; scalar_t__ header_parse_last_size; scalar_t__ header_parse_tries; TYPE_1__ ssl; } ;


 int WEB_CLIENT_MODE_NORMAL ;
 int WEB_CLIENT_MODE_OPTIONS ;
 int WEB_CLIENT_MODE_STREAM ;
 int error (char*,char*) ;
 int memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int web_client_disable_wait_receive (struct web_client*) ;
 scalar_t__ web_client_is_using_ssl_force (struct web_client*) ;

__attribute__((used)) static inline char *web_client_valid_method(struct web_client *w, char *s) {

    if(!strncmp(s, "GET ", 4)) {
        s = &s[4];
        w->mode = WEB_CLIENT_MODE_NORMAL;
    }
    else if(!strncmp(s, "OPTIONS ", 8)) {
        s = &s[8];
        w->mode = WEB_CLIENT_MODE_OPTIONS;
    }
    else if(!strncmp(s, "STREAM ", 7)) {
        s = &s[7];
        w->mode = WEB_CLIENT_MODE_STREAM;
    }
    else {
        s = ((void*)0);
    }

    return s;
}
