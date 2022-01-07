
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int parse_abs(const char **string) {
    const char *s = *string;


    if((s[0] == 'A' || s[0] == 'a') && (s[1] == 'B' || s[1] == 'b') && (s[2] == 'S' || s[2] == 's') && s[3] == '(') {
        *string = &s[3];
        return 1;
    }

    return 0;
}
