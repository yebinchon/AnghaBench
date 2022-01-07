
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memchr (char const*,char,size_t) ;

__attribute__((used)) static size_t strnlen(const char *s, size_t maxlen) {
        char *r = (char *)memchr(s, '\0', maxlen);
        return r ? r-s : maxlen;
}
