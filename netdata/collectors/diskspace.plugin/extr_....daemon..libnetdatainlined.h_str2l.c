
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlikely (char) ;

__attribute__((used)) static inline long str2l(const char *s) {
    long n = 0;
    char c, negative = (*s == '-');

    for(c = (negative)?*(++s):*s; c >= '0' && c <= '9' ; c = *(++s)) {
        n *= 10;
        n += c - '0';
    }

    if(unlikely(negative))
        return -n;

    return n;
}
