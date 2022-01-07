
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;





 int snprintfz (char*,int,char*,char const*,char const*,...) ;
 char* strdupz (char*) ;

char *strdup_client_description(int family, const char *protocol, const char *ip, uint16_t port) {
    char buffer[100 + 1];

    switch(family) {
        case 130:
            snprintfz(buffer, 100, "%s:%s:%d", protocol, ip, port);
            break;

        case 129:
        default:
            snprintfz(buffer, 100, "%s:[%s]:%d", protocol, ip, port);
            break;

        case 128:
            snprintfz(buffer, 100, "%s:%s", protocol, ip);
            break;
    }

    return strdupz(buffer);
}
