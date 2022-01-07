
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ likely (size_t) ;
 int strncpyz (char*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline char *add_wildcarded(const char *matched, size_t matched_size, char *wildcarded, size_t *wildcarded_size) {






    if(unlikely(wildcarded && *wildcarded_size && matched && *matched && matched_size)) {
        size_t wss = *wildcarded_size - 1;
        size_t len = (matched_size < wss)?matched_size:wss;
        if(likely(len)) {
            strncpyz(wildcarded, matched, len);

            *wildcarded_size -= len;
            return &wildcarded[len];
        }
    }

    return wildcarded;
}
