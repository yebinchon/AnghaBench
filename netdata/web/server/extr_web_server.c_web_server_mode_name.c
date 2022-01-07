
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WEB_SERVER_MODE ;





const char *web_server_mode_name(WEB_SERVER_MODE id) {
    switch(id) {
        case 129:
            return "none";
        default:
        case 128:
            return "static-threaded";
    }
}
