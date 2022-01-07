
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char) ;
 char* scanspaces (char*) ;

__attribute__((used)) static char *
scanheader(char *p, char *header[2]) {
    if (isalnum(*p) == 0) {
        return 0;
    }
    header[0] = p;
    while (*p != ':' && *p != 0) {
        p++;
    }
    if (*p != ':') {
        return 0;
    }
    *p++ = 0;
    header[1] = p = scanspaces(p);
    while (*p != ';' && *p != '\r' && *p != '\n' && *p != 0) {
        p++;
    }
    if (*p != 0) {
        *p++ = 0;
    }
    return p;
}
