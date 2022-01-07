
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;
 int snprintf (char*,int,char*,unsigned char) ;
 char** uriencode_map ;
 char* uriencode_str ;

void uriencode_init(void) {
    int x;
    char *str = uriencode_str;
    for (x = 0; x < 256; x++) {
        if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
            uriencode_map[x] = ((void*)0);
        } else {
            snprintf(str, 4, "%%%02hhX", (unsigned char)x);
            uriencode_map[x] = str;
            str += 3;
        }
    }
}
