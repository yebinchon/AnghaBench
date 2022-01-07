
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int from_hex (char) ;
 scalar_t__ likely (int) ;

char url_percent_escape_decode(char *s) {
    if(likely(s[1] && s[2]))
        return from_hex(s[1]) << 4 | from_hex(s[2]);
    return 0;
}
