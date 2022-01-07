
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WEB_SERVER_MODE ;


 int WEB_SERVER_MODE_NONE ;
 int WEB_SERVER_MODE_STATIC_THREADED ;
 int strcmp (char const*,char*) ;

WEB_SERVER_MODE web_server_mode_id(const char *mode) {
    if(!strcmp(mode, "none"))
        return WEB_SERVER_MODE_NONE;
    else
        return WEB_SERVER_MODE_STATIC_THREADED;

}
