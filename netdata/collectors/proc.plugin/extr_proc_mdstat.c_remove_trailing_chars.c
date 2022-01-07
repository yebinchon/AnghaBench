
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline char *remove_trailing_chars(char *s, char c) {
    while(*s) {
        if(unlikely(*s == c)) {
            *s = '\0';
        }
        s++;
    }
    return s;
}
